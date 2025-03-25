use super::*;
use std::collections::HashSet;

const DUMMY_REG : &str = "dummy";

pub fn arm_to_boogie_code(function: &ArmFunction) -> String {
    let mut code = String::new();

    let backward_branch_targets = backward_branch_targets(function);

    for instr in &function.instructions {
        match instr {
            ArmInstruction::Label(name) => {
                code.push_str(&format!("{}:\n", name));

                if backward_branch_targets.contains(name) {
                    code.push_str("    assert last_store < old(step);\n");
                    code.push_str("    assert step >= old(step);\n");
                    code.push_str("    assert (forall i : int, e : Effect :: old(step) <= i && i < step && effects[i][e] ==> ! (e is write));\n\n");
                }
            }
            ArmInstruction::Arithmetic(op, dest, src1, src2_opt) => {
                let op_name = match op {
                    ArithmeticOp::Add => "add",
                    ArithmeticOp::Sub => "sub",
                    ArithmeticOp::Mul => "mul",
                    ArithmeticOp::And => "andd",
                    ArithmeticOp::Orr => "orr",
                    ArithmeticOp::Eor => "eor",
                };

                let dest_reg = register_to_boogie(dest);
                let src1_reg = operand_to_boogie(src1);

                if let Some(src2) = src2_opt {
                    let src2_reg = operand_to_boogie(src2);
                    code.push_str(&format!(
                        "    call {} := execute({}({}, {}));\n",
                        dest_reg, op_name, src1_reg, src2_reg
                    ));
                } else {
                    code.push_str(&format!(
                        "    call {} := execute({}({}));\n",
                        dest_reg, op_name, src1_reg
                    ));
                }
            }
            ArmInstruction::Move(op, dest, src) => {
                let op_name = match op {
                    MoveOp::Mov => "mov",
                    MoveOp::Mvn => "mvn",
                };

                let dest_reg = register_to_boogie(dest);
                let src_reg = operand_to_boogie(src);

                code.push_str(&format!(
                    "    call {} := execute({}({}));\n",
                    dest_reg, op_name, src_reg
                ));
            }
            ArmInstruction::Memory(op, attrs, dest, src) => {
                let (op_name, has_output) = match op {
                    MemoryOp::Load => {
                        if attrs.exclusive {
                            ("ldx", true)
                        } else {
                            ("ld", true)
                        }
                    }
                    MemoryOp::Store => ("st", false),
                };

                let dest_reg = register_to_boogie(dest);
                let src_reg = operand_to_boogie(src);

                if has_output {
                    code.push_str(&format!(
                        "    call {} := execute({}({}, {}));\n",
                        dest_reg, op_name, attrs.acquire, src_reg
                    ));
                } else {
                    code.push_str(&format!(
                        "    call {} := execute({}({}, {}, {}));\n",
                        DUMMY_REG, op_name, attrs.release, dest_reg, src_reg
                    ));
                }
            }
            ArmInstruction::MemoryExclusive(op, attrs, dest, exp, src) => {
                let op_name = match op {
                    MemoryOp::Store => "stx",
                    _ => unimplemented!(),
                };

                let dest_reg = register_to_boogie(dest);
                let exp_reg = operand_to_boogie(exp);
                let src_reg = operand_to_boogie(src);

                code.push_str(&format!(
                    "    call {} := execute({}({}, {}, {}));\n",
                    dest_reg, op_name, attrs.release, exp_reg, src_reg
                ));
            }
            ArmInstruction::Cmp(op1, op2) => {
                let op1_reg = operand_to_boogie(op1);
                let op2_reg = operand_to_boogie(op2);

                code.push_str(&format!(
                    "    call {} := execute(cmp({}, {}));\n",
                    DUMMY_REG, op1_reg, op2_reg
                ));
            }
            ArmInstruction::Branch(cond_opt, target) => match target {
                Operand::Label(label_name) => {
                    if let Some(cond) = cond_opt {
                        let cond_code = condition_to_boogie(cond);
                        code.push_str(&format!(
                            "    if (branch({}, flags)) {{ goto {}; }}\n",
                            cond_code, label_name
                        ));
                    } else {
                        code.push_str(&format!("    goto {};\n", label_name));
                    }
                }
                _ => {
                    code.push_str("    // Unhandled branch type\n");
                }
            },
            ArmInstruction::ConditionalBranch(is_zero, test, target) => {
                if let Operand::Label(label_name) = target {
                    let test_reg = operand_to_boogie(test);
                    let condition = if *is_zero { "" } else { "!" };
                    code.push_str(&format!(
                        "    if ({}cbz({})) {{ goto {}; }}\n",
                        condition, test_reg, label_name
                    ));
                }
            }
            ArmInstruction::Dmb(mode) => {
                code.push_str(&format!(
                    "    call {} := execute(dmb({}));\n",
                    DUMMY_REG, mode
                ));
            }
            ArmInstruction::Return(_) => {
                code.push_str("    return;\n");
            }
            _ => {
                code.push_str(&format!("    // Unhandled instruction: {:?}\n", instr));
            }
        }
    }

    code
}


pub fn get_used_registers(function: &ArmFunction) -> String {
    let mut registers = HashSet::new();

    for instr in &function.instructions {
        collect_registers_from_instruction(instr, &mut registers);
    }

    let mut result = registers.into_iter().collect::<Vec<_>>();
    result.sort();
    result.push(DUMMY_REG.to_string());
    result.join(", ")
}

fn backward_branch_targets(function: &ArmFunction) -> HashSet<String> {
    let mut labels = HashSet::new();
    let mut targets = HashSet::new();

    for instr in &function.instructions {
        if let ArmInstruction::Label(name) = instr {
            labels.insert(name.clone());
        }
    }

    let mut current_labels = Vec::new();
    for instr in &function.instructions {
        match instr {
            ArmInstruction::Label(name) => {
                current_labels.push(name.clone());
            }
            ArmInstruction::Branch(_, target) => {
                if let Operand::Label(label_name) = target {
                    if current_labels.contains(&label_name) {
                        targets.insert(label_name.clone());
                    }
                }
            }
            ArmInstruction::ConditionalBranch(_, _, target) => {
                if let Operand::Label(label_name) = target {
                    if current_labels.contains(&label_name) {
                        targets.insert(label_name.clone());
                    }
                }
            }
            _ => {}
        }
    }

    targets
}

fn collect_registers_from_instruction(instr: &ArmInstruction, registers: &mut HashSet<String>) {
    match instr {
        ArmInstruction::Arithmetic(_, dest, src1, src2_opt) => {
            if let Operand::Register(reg) = dest {
                registers.insert(register_to_string(reg));
            }
            collect_registers_from_operand(src1, registers);
            if let Some(src2) = src2_opt {
                collect_registers_from_operand(src2, registers);
            }
        }
        ArmInstruction::Move(_, dest, src) => {
            if let Operand::Register(reg) = dest {
                registers.insert(register_to_string(reg));
            }
            collect_registers_from_operand(src, registers);
        }
        ArmInstruction::Memory(_, _, dest, src) => {
            if let Operand::Register(reg) = dest {
                registers.insert(register_to_string(reg));
            }
            collect_registers_from_operand(src, registers);
        }
        ArmInstruction::MemoryExclusive(_, _, dest, exp, src) => {
            if let Operand::Register(reg) = dest {
                registers.insert(register_to_string(reg));
            }
            collect_registers_from_operand(exp, registers);
            collect_registers_from_operand(src, registers);
        }
        ArmInstruction::Cmp(op1, op2) => {
            collect_registers_from_operand(op1, registers);
            collect_registers_from_operand(op2, registers);
        }
        ArmInstruction::ConditionalBranch(_, test, _) => {
            collect_registers_from_operand(test, registers);
        }
        ArmInstruction::Return(Some(op)) => {
            collect_registers_from_operand(op, registers);
        }
        _ => {}
    }
}

fn collect_registers_from_operand(op: &Operand, registers: &mut HashSet<String>) {
    match op {
        Operand::Register(reg) => {
            registers.insert(register_to_string(reg));
        }
        Operand::Memory(addr_mode) => match addr_mode {
            AddressingMode::BaseRegister(reg) => {
                registers.insert(register_to_string(reg));
            }
            AddressingMode::BaseRegisterWithOffset(reg, _) => {
                registers.insert(register_to_string(reg));
            }
            AddressingMode::PreIndexed(reg, _) => {
                registers.insert(register_to_string(reg));
            }
            AddressingMode::PostIndexed(reg, _) => {
                registers.insert(register_to_string(reg));
            }
        },
        Operand::ShiftedRegister(reg, _, _) => {
            registers.insert(register_to_string(reg));
        }
        Operand::RegisterList(regs) => {
            for reg in regs {
                registers.insert(register_to_string(reg));
            }
        }
        _ => {}
    }
}



fn register_to_string(reg: &Register) -> String {
    match reg.reg_type {
        RegisterType::X => format!("x{}", reg.number),
        RegisterType::W => format!("w{}", reg.number),
        RegisterType::V => format!("v{}", reg.number),
        RegisterType::Q => format!("q{}", reg.number),
        RegisterType::D => format!("d{}", reg.number),
        RegisterType::S => format!("s{}", reg.number),
        RegisterType::H => format!("h{}", reg.number),
        RegisterType::B => format!("b{}", reg.number),
        RegisterType::SP => "sp".to_string(),
    }
}

fn register_to_boogie(operand: &Operand) -> String {
    match operand {
        Operand::Register(reg) => register_to_string(reg),
        _ => "unknown_register".to_string(),
    }
}

fn operand_to_boogie(operand: &Operand) -> String {
    match operand {
        Operand::Register(reg) => register_to_string(reg),
        Operand::ImmediateValue(val) => val.to_string(),
        Operand::Memory(addr_mode) => match addr_mode {
            AddressingMode::BaseRegister(reg) => register_to_string(reg),
            AddressingMode::BaseRegisterWithOffset(reg, offset) => {
                format!("{} + {}", register_to_string(reg), offset)
            }
            _ => "unknown_memory_address".to_string(),
        },
        Operand::Label(label) => format!("\"{}\"", label),
        _ => "unknown_operand".to_string(),
    }
}

fn condition_to_boogie(cond: &ConditionCode) -> String {
    match cond {
        ConditionCode::EQ => "EQ()".to_string(),
        ConditionCode::NE => "NE()".to_string(),
        ConditionCode::CS => "HS()".to_string(), // CS is the same as HS
        ConditionCode::CC => "LO()".to_string(), // CC is the same as LO
        ConditionCode::HI => "HI()".to_string(),
        ConditionCode::LS => "LS()".to_string(),
        _ => "unknown_condition".to_string(),
    }
}
