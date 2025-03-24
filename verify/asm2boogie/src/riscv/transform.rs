use super::*;

use std::collections::HashMap;

pub fn extract_riscv_functions(
    parsed: Vec<RiscvInstruction>,
    names: Option<&[String]>,
    valid_prefix: &[&str],
) -> Vec<RiscvFunction> {
    let mut functions = Vec::new();
    let mut current_function: Option<(String, Vec<RiscvInstruction>)> = None;

    for instr in parsed {
        match &instr {
            RiscvInstruction::Label(name) if !name.starts_with(".") => {
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
    let mut label_map = HashMap::new();
    let mut label_defs = Vec::new();
    let mut unique_label_counter = 1;

    for (index, instruction) in function.instructions.iter().enumerate() {
        if let RiscvInstruction::Label(name) = instruction {
            if name != &function.name {
                let unique_name = format!("l{}", unique_label_counter);
                unique_label_counter += 1;
                label_map.insert(index, unique_name.clone());
                label_defs.push((name.clone(), index));
            }
        }
    }

    let mut label_indices: HashMap<String, Vec<usize>> = HashMap::new();
    for (name, index) in &label_defs {
        label_indices
            .entry(name.clone())
            .or_insert(Vec::new())
            .push(*index);
    }
    for indices in label_indices.values_mut() {
        indices.sort();
    }

    let resolve_label = |label: &str, i: usize| -> Option<String> {
        if label.ends_with('f') {
            let base = &label[0..label.len() - 1];
            if let Some(indices) = label_indices.get(base) {
                if let Some(&j) = indices.iter().find(|&&j| j > i) {
                    return label_map.get(&j).cloned();
                }
            }
        } else if label.ends_with('b') {
            let base = &label[0..label.len() - 1];
            if let Some(indices) = label_indices.get(base) {
                if let Some(&j) = indices.iter().rev().find(|&&j| j < i) {
                    return label_map.get(&j).cloned();
                }
            }
        } else {
            return Some(label.to_string());
        }
        None
    };

    let mut new_instructions = Vec::new();
    for (index, instruction) in function.instructions.iter().enumerate() {
        match instruction {
            RiscvInstruction::Label(name) => {
                if name == &function.name {
                    new_instructions.push(instruction.clone());
                } else if let Some(unique_name) = label_map.get(&index) {
                    new_instructions.push(RiscvInstruction::Label(unique_name.clone()));
                } else {
                    new_instructions.push(instruction.clone());
                }
            }
            RiscvInstruction::Branch {
                op,
                rs1,
                rs2,
                label,
            } => {
                if let Some(resolved_label) = resolve_label(label, index) {
                    new_instructions.push(RiscvInstruction::Branch {
                        op: op.clone(),
                        rs1: rs1.clone(),
                        rs2: rs2.clone(),
                        label: resolved_label,
                    });
                } else {
                    new_instructions.push(RiscvInstruction::Unhandled(format!(
                        "Unresolved label: {}",
                        label
                    )));
                }
            }
            RiscvInstruction::Jump { rd, label } => {
                if let Some(resolved_label) = resolve_label(label, index) {
                    new_instructions.push(RiscvInstruction::Jump {
                        rd: rd.clone(),
                        label: resolved_label,
                    });
                } else {
                    new_instructions.push(RiscvInstruction::Unhandled(format!(
                        "Unresolved label: {}",
                        label
                    )));
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
