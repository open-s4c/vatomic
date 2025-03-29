use super::*;

use std::collections::{HashMap, HashSet};

pub fn extract_riscv_functions(
    parsed: Vec<RiscvInstruction>,
    names: Option<&[String]>,
    valid_prefix: &[&str],
) -> Vec<RiscvFunction> {
    let mut functions = Vec::new();
    let mut current_function: Option<(String, Vec<RiscvInstruction>)> = None;

    for instr in parsed {
        match &instr {
            RiscvInstruction::Label(name)
                if name
                    .chars()
                    .next()
                    .map_or(false, |c| c.is_alphabetic() || c == '_') =>
            {
                if let Some((prev_name, prev_instrs)) = current_function {
                    functions.push(RiscvFunction {
                        name: prev_name,
                        instructions: prev_instrs,
                    });
                }
                current_function = Some((name.clone(), vec![instr.clone()]));
            }
            _ => {
                if let Some((_, ref mut instrs)) = current_function {
                    instrs.push(instr.clone());
                }
            }
        }
    }

    if let Some((name, instrs)) = current_function {
        functions.push(RiscvFunction {
            name,
            instructions: instrs,
        });
    }

    match names {
        Some(names) => {
            let valid_ns = valid_prefix;
            functions
                .into_iter()
                .filter(|f| {
                    if f.name.starts_with("vatomic") {
                        let rest = &f.name[7..]; // Remove "vatomic"
                        if let Some((n, suffix)) = rest.split_once('_') {
                            valid_ns.contains(&n) && names.contains(&suffix.to_string())
                        } else {
                            false
                        }
                    } else {
                        false
                    }
                })
                .collect()
        }
        None => functions,
    }
}
pub fn remove_directives(function: &RiscvFunction) -> RiscvFunction {
    let new_instructions = function
        .instructions
        .iter()
        .filter(|instruction| !matches!(instruction, RiscvInstruction::Directive(_)))
        .cloned()
        .collect();

    RiscvFunction {
        name: function.name.clone(),
        instructions: new_instructions,
    }
}

pub fn transform_labels(function: &RiscvFunction) -> RiscvFunction {
    let mut label_defs = Vec::new();
    let mut label_indices: HashMap<String, Vec<usize>> = HashMap::new();

    for (index, instruction) in function.instructions.iter().enumerate() {
        if let RiscvInstruction::Label(name) = instruction {
            if name != &function.name {
                label_defs.push((index, name.clone()));
                label_indices
                    .entry(name.clone())
                    .or_insert(Vec::new())
                    .push(index);
            }
        }
    }

    for indices in label_indices.values_mut() {
        indices.sort();
    }

    let mut used_positions = HashSet::new();
    for (i, instruction) in function.instructions.iter().enumerate() {
        let label = match instruction {
            RiscvInstruction::Branch { label, .. } | RiscvInstruction::Jump { label, .. } => label,
            _ => continue,
        };
        if label.ends_with('f') || label.ends_with('b') {
            if let Some(j) = find_label_position(label, i, &label_indices) {
                used_positions.insert(j);
            }
        }
    }

    let mut used_label_positions: Vec<usize> = label_defs
        .iter()
        .filter(|(pos, _)| used_positions.contains(pos))
        .map(|(pos, _)| *pos)
        .collect();
    used_label_positions.sort();

    let mut position_to_new_label = HashMap::new();
    for (n, &pos) in used_label_positions.iter().enumerate() {
        position_to_new_label.insert(pos, format!("L{}", n + 1));
    }

    let mut new_instructions = Vec::new();
    for (i, instruction) in function.instructions.iter().enumerate() {
        match instruction {
            RiscvInstruction::Label(_name) => {
                if used_positions.contains(&i) {
                    let new_name = position_to_new_label[&i].clone();
                    new_instructions.push(RiscvInstruction::Label(new_name));
                }
            }
            RiscvInstruction::Branch {
                op,
                rs1,
                rs2,
                label,
            } => {
                if label.ends_with('f') || label.ends_with('b') {
                    if let Some(j) = find_label_position(label, i, &label_indices) {
                        if let Some(new_label) = position_to_new_label.get(&j) {
                            new_instructions.push(RiscvInstruction::Branch {
                                op: op.clone(),
                                rs1: rs1.clone(),
                                rs2: rs2.clone(),
                                label: new_label.clone(),
                            });
                        } else {
                            new_instructions.push(RiscvInstruction::Unhandled(format!(
                                "Unresolved label: {}",
                                label
                            )));
                        }
                    } else {
                        new_instructions.push(RiscvInstruction::Unhandled(format!(
                            "Unresolved label: {}",
                            label
                        )));
                    }
                } else {
                    new_instructions.push(instruction.clone());
                }
            }
            RiscvInstruction::Jump { rd, label } => {
                if label.ends_with('f') || label.ends_with('b') {
                    if let Some(j) = find_label_position(label, i, &label_indices) {
                        if let Some(new_label) = position_to_new_label.get(&j) {
                            new_instructions.push(RiscvInstruction::Jump {
                                rd: rd.clone(),
                                label: new_label.clone(),
                            });
                        } else {
                            new_instructions.push(RiscvInstruction::Unhandled(format!(
                                "Unresolved label: {}",
                                label
                            )));
                        }
                    } else {
                        new_instructions.push(RiscvInstruction::Unhandled(format!(
                            "Unresolved label: {}",
                            label
                        )));
                    }
                } else {
                    new_instructions.push(instruction.clone());
                }
            }
            _ => new_instructions.push(instruction.clone()),
        }
    }

    RiscvFunction {
        name: function.name.clone(),
        instructions: new_instructions,
    }
}

fn find_label_position(
    label: &str,
    i: usize,
    label_indices: &HashMap<String, Vec<usize>>,
) -> Option<usize> {
    if label.ends_with('f') {
        let base = &label[0..label.len() - 1];
        label_indices
            .get(base)
            .and_then(|indices| indices.iter().find(|&&j| j > i).copied())
    } else if label.ends_with('b') {
        let base = &label[0..label.len() - 1];
        label_indices
            .get(base)
            .and_then(|indices| indices.iter().rev().find(|&&j| j < i).copied())
    } else {
        None
    }
}
