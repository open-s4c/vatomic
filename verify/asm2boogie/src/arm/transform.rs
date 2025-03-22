use super::*;

pub fn extract_functions(
    parsed: Vec<ArmInstruction>,
    names: Option<&[String]>,
    valid_prefix: &[&str],
) -> Vec<ArmFunction> {
    let mut functions = Vec::new();
    let mut current_function: Option<(String, Vec<ArmInstruction>)> = None;

    for instr in parsed {
        match &instr {
            ArmInstruction::Label(name) if !name.starts_with(".") => {
                if let Some((prev_name, prev_instrs)) = current_function {
                    functions.push(ArmFunction {
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
        functions.push(ArmFunction {
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

pub fn transform_labels(function: &ArmFunction) -> ArmFunction {
    let mut label_defs = Vec::new();
    let mut label_refs = Vec::new();

    for instruction in &function.instructions {
        match instruction {
            ArmInstruction::Label(name) => {
                label_defs.push(name.clone());
            }
            ArmInstruction::Branch(_, Operand::Label(name))
            | ArmInstruction::BranchLink(Operand::Label(name))
            | ArmInstruction::ConditionalBranch(_, _, Operand::Label(name))
            | ArmInstruction::TestBitBranch(_, _, _, Operand::Label(name)) => {
                label_refs.push(name.clone());
            }
            _ => {}
        }
    }

    let used_labels: Vec<String> = label_defs
        .iter()
        .filter(|&label| label_refs.contains(label))
        .cloned()
        .collect();

    let mut label_map = std::collections::HashMap::new();
    for (i, label) in used_labels.iter().enumerate() {
        label_map.insert(label.clone(), format!("l{}", i + 1));
    }

    let mut new_instructions = Vec::new();

    for instruction in &function.instructions {
        match instruction {
            ArmInstruction::Label(name) => {
                if let Some(new_name) = label_map.get(name) {
                    new_instructions.push(ArmInstruction::Label(new_name.clone()));
                }
            }
            ArmInstruction::Branch(cond, Operand::Label(name)) => {
                if let Some(new_name) = label_map.get(name) {
                    new_instructions.push(ArmInstruction::Branch(
                        cond.clone(),
                        Operand::Label(new_name.clone()),
                    ));
                } else {
                    new_instructions.push(instruction.clone());
                }
            }
            ArmInstruction::BranchLink(Operand::Label(name)) => {
                if let Some(new_name) = label_map.get(name) {
                    new_instructions
                        .push(ArmInstruction::BranchLink(Operand::Label(new_name.clone())));
                } else {
                    new_instructions.push(instruction.clone());
                }
            }
            ArmInstruction::ConditionalBranch(cond, op, Operand::Label(name)) => {
                if let Some(new_name) = label_map.get(name) {
                    new_instructions.push(ArmInstruction::ConditionalBranch(
                        *cond,
                        op.clone(),
                        Operand::Label(new_name.clone()),
                    ));
                } else {
                    new_instructions.push(instruction.clone());
                }
            }
            ArmInstruction::TestBitBranch(cond, op1, op2, Operand::Label(name)) => {
                if let Some(new_name) = label_map.get(name) {
                    new_instructions.push(ArmInstruction::TestBitBranch(
                        *cond,
                        op1.clone(),
                        op2.clone(),
                        Operand::Label(new_name.clone()),
                    ));
                } else {
                    new_instructions.push(instruction.clone());
                }
            }
            _ => {
                new_instructions.push(instruction.clone());
            }
        }
    }

    ArmFunction {
        name: function.name.clone(),
        instructions: new_instructions,
    }
}

pub fn remove_directives(function: &ArmFunction) -> ArmFunction {
    let new_instructions = function
        .instructions
        .iter()
        .filter(|instruction| !matches!(instruction, ArmInstruction::Directive(_)))
        .cloned()
        .collect();

    ArmFunction {
        name: function.name.clone(),
        instructions: new_instructions,
    }
}
