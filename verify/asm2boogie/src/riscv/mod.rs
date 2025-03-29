mod parser;
mod transform;

// pub use genegrate::{arm_to_boogie_code, get_address_registers, get_used_registers};
pub use parser::parse_riscv_assembly;
pub use transform::{extract_riscv_functions, remove_directives, transform_labels};

use crate::{BoogieFunction, BoogieInstruction, DUMMY_REG, ToBoogie};

#[derive(Debug, Clone, PartialEq)]
pub struct MemoryOperand {
    pub offset: i64,
    pub base: Register,
}

#[derive(Debug, Clone, PartialEq)]
pub enum Size {
    Byte,   // 8-bit
    Half,   // 16-bit
    Word,   // 32-bit
    Double, // 64-bit
}

#[derive(Debug, Clone, PartialEq)]
pub enum AtomicSemantics {
    None,
    Acquire,
    Release,
    AcquireRelease,
}

#[derive(Debug, Clone, PartialEq)]
pub enum Directive {
    CFIStartProc,
    CFIEndProc,
    Size(String, String),
    Align(u32),
    P2Align(u32, u32, u32),
    Type(String, String),
}

#[derive(Debug, Clone, PartialEq)]
pub enum FenceMode {
    Read,
    Write,
    ReadWrite,
}

#[derive(Debug, Clone, PartialEq)]
pub enum RegisterType {
    A,               // Argument registers (a0-a7)
    T,               // Temporary registers (t0-t6)
    S,               // Saved registers (s0-s11)
    X,               // General-purpose (x0-x31)
    Special(String), // Special registers like "zero", "ra", "sp"
}

#[derive(Debug, Clone, PartialEq)]
pub struct Register {
    pub reg_type: RegisterType,
    pub number: Option<u8>,
}

#[derive(Debug, Clone, PartialEq)]
pub enum Operand {
    Register(Register),
    Immediate(i64),
    Memory(MemoryOperand),
    Label(String),
    FenceMode(FenceMode),
}
#[derive(Debug, Clone, PartialEq)]
pub enum AtomicOp {
    Swap,
    Add,
    And,
    Or,
    Xor,
    Max,
    Min,
}
#[derive(Debug, Clone, PartialEq)]
pub enum ArithmeticOp {
    Add,
    Sub,
    Mul,
    And,
    Or,
    Xor,
    Sll, // Shift Left Logical
    Srl, // Shift Right Logical
    Sra, // Shift Right Arithmetic
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum ComparisonOp {
    Eq,  // Equal (for beq)
    Ne,  // Not equal (for bne)
    Lt,  // Less than, signed (for blt)
    Ge,  // Greater than or equal, signed (for bge)
    Ltu, // Less than, unsigned (for bltu)
    Geu, // Greater than or equal, unsigned (for bgeu)
    Nez, // Not equal zero (for bnez)
}

#[derive(Debug, Clone, PartialEq)]
pub enum RiscvInstruction {
    Label(String),
    Directive(Directive),
    Fence {
        pred: FenceMode,
        succ: FenceMode,
    },
    Load {
        size: Size,
        dst: Register,
        src: MemoryOperand,
    },
    Store {
        size: Size,
        src: Register,
        dst: MemoryOperand,
    },
    LoadReserved {
        size: Size,
        semantics: AtomicSemantics,
        rd: Register,
        addr: MemoryOperand,
    },
    StoreConditional {
        size: Size,
        semantics: AtomicSemantics,
        rd: Register,
        rs2: Register,
        addr: MemoryOperand,
    },
    Atomic {
        op: AtomicOp,
        size: Size,
        semantics: AtomicSemantics,
        rd: Register,
        rs2: Register,
        addr: MemoryOperand,
    },
    ArithmeticRR {
        op: ArithmeticOp,
        rd: Register,
        rs1: Register,
        rs2: Register,
    },
    ArithmeticRI {
        op: ArithmeticOp,
        rd: Register,
        rs1: Register,
        imm: i64,
    },
    Move(Register, Register),
    SignExtendWord(Register, Register),
    Branch {
        op: ComparisonOp,
        rs1: Register,
        rs2: Register,
        label: String,
    },
    Jump {
        rd: Register,
        label: String,
    },
    Return,
    Unhandled(String),
}

#[derive(Debug, Clone)]
pub struct RiscvFunction {
    pub name: String,
    pub instructions: Vec<RiscvInstruction>,
}

impl RiscvFunction {
    pub fn parse_and_transform<'a>(
        content: &'a str,
        names: Option<&[String]>,
        valid_prefix: &[&str],
    ) -> Result<Vec<RiscvFunction>, nom::Err<nom::error::Error<&'a str>>> {
        let (_, parsed) = parse_riscv_assembly(content)?;
        log::info!("Successfully parsed arm assembly");

        let processed_functions = extract_riscv_functions(parsed, names, valid_prefix)
            .into_iter()
            .map(|f| transform_labels(&f))
            .map(|f| remove_directives(&f))
            .collect::<Vec<_>>();

        Ok(processed_functions)
    }
}

pub fn riscv_to_boogie(function: RiscvFunction) -> BoogieFunction {
    let instructions = function
        .instructions
        .iter()
        .map(|instr| riscv_instruction_to_boogie(instr))
        .collect();

    BoogieFunction {
        name: function.name.clone(),
        instructions,
    }
}

impl ToBoogie for RiscvFunction {
    fn to_boogie(self) -> BoogieFunction {
        riscv_to_boogie(self)
    }
}

pub fn riscv_instruction_to_boogie(instr: &RiscvInstruction) -> BoogieInstruction {
    match instr {
        RiscvInstruction::Label(name) => BoogieInstruction::Label(name.clone()),
        RiscvInstruction::Branch {
            op,
            rs1,
            rs2,
            label,
        } => {
            if let Some(cond) = condition_to_boogie(op) {
                let r1 = register_to_string(rs1);
                let r2 = register_to_string(rs2);
                log::debug!("op: {:?}", op);
                if *op == ComparisonOp::Nez {
                    BoogieInstruction::RiscvBranch(
                        super::Condition::NE,
                        super::Operand::Register(r1),
                        super::Operand::Immediate(0.to_string()),
                        label.to_string(),
                    )
                } else {
                    BoogieInstruction::RiscvBranch(
                        cond,
                        super::Operand::Register(r1),
                        super::Operand::Register(r2),
                        label.to_string(),
                    )
                }
            } else {
                BoogieInstruction::Unhandled(format!("invalid: {:?}", op))
            }
        }
        RiscvInstruction::Fence { pred, succ } => {
            let (pr, pw) = fence_mode_to_boogie(pred);
            let (sr, sw) = fence_mode_to_boogie(succ);

            let (ra, wa) = (super::Operand::Bool(pr), super::Operand::Bool(pw));
            let (rb, wb) = (super::Operand::Bool(sr), super::Operand::Bool(sw));

            BoogieInstruction::Instr(
                "fence".to_string(),
                DUMMY_REG.to_string(),
                vec![ra, wa, rb, wb],
            )
        }
        RiscvInstruction::Load { dst, src, .. } => {
            let dst_reg = register_to_string(dst);
            let src_reg = operand_to_boogie(&Operand::Memory(src.clone()));

            BoogieInstruction::Instr("ld".to_string(), dst_reg, vec![src_reg])
        }
        RiscvInstruction::LoadReserved {
            semantics,
            rd,
            addr,
            ..
        } => {
            let aq = matches!(
                semantics,
                AtomicSemantics::Acquire | AtomicSemantics::AcquireRelease
            );
            let rl = matches!(
                semantics,
                AtomicSemantics::Release | AtomicSemantics::AcquireRelease
            );
            let dst_reg = register_to_string(rd);
            let src_reg = operand_to_boogie(&Operand::Memory(addr.clone()));

            BoogieInstruction::Instr(
                "lr".to_string(),
                dst_reg,
                vec![super::Operand::Bool(aq), super::Operand::Bool(rl), src_reg],
            )
        }
        RiscvInstruction::StoreConditional {
            semantics,
            rd,
            rs2,
            addr,
            ..
        } => {
            let aq = matches!(
                semantics,
                AtomicSemantics::Acquire | AtomicSemantics::AcquireRelease
            );
            let rl = matches!(
                semantics,
                AtomicSemantics::Release | AtomicSemantics::AcquireRelease
            );

            let dst_reg = register_to_string(rd);
            let src_reg = operand_to_boogie(&Operand::Register(rs2.clone()));
            let addr_op = operand_to_boogie(&Operand::Memory(addr.clone()));

            BoogieInstruction::Instr(
                "sc".to_string(),
                dst_reg,
                vec![
                    super::Operand::Bool(aq),
                    super::Operand::Bool(rl),
                    src_reg,
                    addr_op,
                ],
            )
        }
        RiscvInstruction::Store { dst, src, .. } => {
            let src_reg = operand_to_boogie(&Operand::Register(src.clone()));
            let dst_reg = operand_to_boogie(&Operand::Memory(dst.clone()));

            BoogieInstruction::Instr(
                "sb".to_string(),
                DUMMY_REG.to_string(),
                vec![src_reg, dst_reg],
            )
        }
        RiscvInstruction::Move(dst, src) => {
            let dst_reg = register_to_string(dst);
            let src_reg = operand_to_boogie(&Operand::Register(src.clone()));
            BoogieInstruction::Instr("mv".to_string(), dst_reg, vec![src_reg])
        }
        RiscvInstruction::Atomic {
            op,
            semantics,
            rd,
            rs2,
            addr,
            ..
        } => {
            let atomic_op = format!(
                "Atomic{}()",
                match op {
                    AtomicOp::Add => "Add",
                    AtomicOp::And => "And",
                    AtomicOp::Max => "Max",
                    AtomicOp::Min => "Min",
                    AtomicOp::Or => "Or",
                    AtomicOp::Xor => "Xor",
                    AtomicOp::Swap => "Swap",
                }
            );

            let aq = matches!(
                semantics,
                AtomicSemantics::Acquire | AtomicSemantics::AcquireRelease
            );
            let rl = matches!(
                semantics,
                AtomicSemantics::Release | AtomicSemantics::AcquireRelease
            );

            let dst_reg = register_to_string(rd);
            let src_reg = operand_to_boogie(&Operand::Register(rs2.clone()));
            let addr_op = operand_to_boogie(&Operand::Memory(addr.clone()));

            BoogieInstruction::Instr(
                "atomic".to_string(),
                dst_reg,
                vec![
                    super::Operand::Named(atomic_op),
                    super::Operand::Bool(aq),
                    super::Operand::Bool(rl),
                    src_reg,
                    addr_op,
                ],
            )
        }
        RiscvInstruction::Return => BoogieInstruction::Return,
        _ => BoogieInstruction::Unhandled(format!("// unimplemented {:?}", instr)),
    }
}

fn condition_to_boogie(cond: &ComparisonOp) -> Option<super::Condition> {
    let cond = match cond {
        ComparisonOp::Eq => super::Condition::EQ,
        ComparisonOp::Ne => super::Condition::NE,
        ComparisonOp::Nez => super::Condition::NEZ,
        ComparisonOp::Ge => super::Condition::HS,
        ComparisonOp::Geu => super::Condition::HS,
        ComparisonOp::Lt => super::Condition::LO,
        ComparisonOp::Ltu => super::Condition::LO,
    };
    Some(cond)
}

fn register_to_string(reg: &Register) -> String {
    match &reg.reg_type {
        RegisterType::A => format!("a{}", reg.number.unwrap()),
        RegisterType::T => format!("t{}", reg.number.unwrap()),
        RegisterType::S => format!("s{}", reg.number.unwrap()),
        RegisterType::X => format!("x{}", reg.number.unwrap()),
        RegisterType::Special(name) => name.to_string(),
    }
}

fn operand_to_boogie(operand: &Operand) -> super::Operand {
    match operand.clone() {
        Operand::Register(reg) => super::Operand::Register(register_to_string(&reg)),
        Operand::Immediate(val) => super::Operand::Value(val),
        Operand::Memory(op) => {
            super::Operand::AdressOffset(register_to_string(&op.base), op.offset)
        }
        _ => unimplemented!(),
    }
}

fn fence_mode_to_boogie(mode: &FenceMode) -> (bool, bool) {
    match mode {
        FenceMode::Read => (true, false),
        FenceMode::Write => (false, true),
        FenceMode::ReadWrite => (true, true),
    }
}
