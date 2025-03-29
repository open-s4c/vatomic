use std::collections::HashSet;

use crate::{BoogieInstruction, Condition, DUMMY_REG, Operand, loop_headers};

pub fn boogie_to_string(instructions: &[BoogieInstruction]) -> String {
    let mut code = String::new();

    let loop_header_idx = loop_headers(instructions);
    let backward_branch_targets: HashSet<_> = loop_header_idx
        .iter()
        .copied()
        .map(|i| match &instructions[i] {
            BoogieInstruction::Label(name) => name.clone(),
            _ => unreachable!(),
        })
        .collect();

    for instr in instructions {
        match instr {
            BoogieInstruction::Label(name) => {
                code.push_str(&format!("{}:\n", name));

                if backward_branch_targets.contains(name) {
                    code.push_str("    assert last_store < old(step);\n");
                    code.push_str("    assert step >= old(step);\n");
                    code.push_str("    assert (forall i : int, e : Effect :: old(step) <= i && i < step && effects[i] == e ==> ! (e is write));\n\n");
                }
            }
            BoogieInstruction::Instr(name, out, ops) => {
                code.push_str(&format!(
                    "    call {} := execute({}({}));\n",
                    out,
                    name,
                    operands_to_string(ops)
                ));
            }
            BoogieInstruction::ArmBranch(cond, op, target) => {
                let fun = match cond {
                    Condition::BZ => format!("cbz({})", operand_to_string(op)),
                    Condition::BNZ => format!("!cbz({})", operand_to_string(op)),
                    _ => format!("branch({}, flags)", condition_to_string(cond)),
                };
                code.push_str(&format!("    if ({}) {{ goto {}; }}\n", fun, &target,));
            }
            BoogieInstruction::RiscvBranch(cond, op1, op2, target) => {
                let cond_name = condition_to_string(cond);
                let op1_name = operand_to_string(op1);
                let op2_name = operand_to_string(op2);
                code.push_str(&format!("    if ({}, {}, {}) {{ goto {}; }}\n", cond_name, op1_name, op2_name, target));
            }
            BoogieInstruction::Jump(target) => {
                code.push_str(&format!("    goto {};\n", target));
            }
            BoogieInstruction::Return => {
                code.push_str("    return;\n");
            }
            BoogieInstruction::Unhandled(ins) => {
                code.push_str(&format!("    // Unhandled: {}\n", ins));
            }
        }
    }
    code
}

fn operands_to_string(ops: &[Operand]) -> String {
    ops.iter()
        .map(|op| operand_to_string(op))
        .collect::<Vec<String>>()
        .join(", ")
}

fn operand_to_string(op: &Operand) -> String {
    match op {
        Operand::Immediate(val) => val.to_string(),
        Operand::Address(reg) => reg.to_string(),
        Operand::AdressOffset(reg, offset) => format!("{reg} + {offset}"),
        Operand::Label(name) => name.to_string(),
        Operand::Register(name) => name.to_string(),
        Operand::Bool(val) => val.to_string(),
        Operand::Value(val) => val.to_string(),
        Operand::Named(name) => name.to_string(),
        Operand::Cond(cond) => condition_to_string(cond),
    }
}

pub fn get_used_registers(instructions: &[BoogieInstruction]) -> String {
    let mut registers = HashSet::new();

    for instr in instructions {
        collect_registers_from_instruction(instr, &mut registers);
    }

    let mut result = registers.into_iter().collect::<Vec<_>>();
    result.push(DUMMY_REG.to_string());
    result.push("x0".to_string());
    result.push("x1".to_string());
    result.push("x2".to_string());
    result.push("w0".to_string());
    result.push("w1".to_string());
    result.push("w2".to_string());
    result.sort();
    result.dedup();
    result.join(", ")
}

fn collect_registers_from_instruction(instr: &BoogieInstruction, registers: &mut HashSet<String>) {
    match instr {
        BoogieInstruction::Instr(_name, _, ops) => {
            for op in ops {
                collect_registers_from_operand(op, registers);
            }
        }
        BoogieInstruction::ArmBranch(_cond, op, _target) => {
            collect_registers_from_operand(op, registers);
        }
        BoogieInstruction::RiscvBranch(_cond, op1, op2, _target) => {
            collect_registers_from_operand(op1, registers);
            collect_registers_from_operand(op2, registers);
        }
        _ => {}
    }
}

fn collect_registers_from_operand(op: &Operand, registers: &mut HashSet<String>) {
    match op {
        Operand::Address(name) | Operand::Register(name) | Operand::AdressOffset(name, _) => {
            registers.insert(name.to_string());
        }
        _ => {}
    }
}

fn condition_to_string(cond: &Condition) -> String {
    match cond {
        Condition::EQ => "EQ()".to_string(),
        Condition::NE => "NE()".to_string(),
        Condition::HS => "HS()".to_string(),
        Condition::LO => "LO()".to_string(),
        Condition::HI => "HI()".to_string(),
        Condition::LS => "LS()".to_string(),
        _ => "unknown_condition".to_string(),
    }
}
