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
    LoadImmidate {
        register: Register,
        value: i64,
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

use itertools::Itertools;
impl ToBoogie for RiscvFunction {
    fn to_boogie(self) -> BoogieFunction {
        println!("generating boogie for {}\n    {:?}", self.name, self.instructions.iter().map(|s| format!("{:?}", s)).join("\n    "));
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
            let r1 = register_to_string(rs1);
            let r2 = register_to_string(rs2);
            log::debug!("op: {:?}", op);
            BoogieInstruction::Branch(label.to_string(), 
                match *op { 
                    ComparisonOp::Nez => format!("bnez({})", r1.to_string()),
                    _ => format!("b{}({}, {})", format!("{:?}", op).to_lowercase(), r1.to_string(), r2.to_string()),
                })
        }
        RiscvInstruction::Fence { pred, succ } => {
            let (pr, pw) = fence_mode_to_boogie(pred);
            let (sr, sw) = fence_mode_to_boogie(succ);

            BoogieInstruction::Instr(
                "fence".to_string(),
                DUMMY_REG.to_string(),
                vec![pr.to_string(), pw.to_string(), sr.to_string(), sw.to_string()],
            )
        }
        RiscvInstruction::Load { dst, src, .. } => {
            let dst_reg = register_to_string(dst);
            let src_reg = operand_to_boogie(&Operand::Memory(src.clone()));

            BoogieInstruction::Instr("ld".to_string(), dst_reg, vec![src_reg])
        }
        RiscvInstruction::LoadImmidate { register, value } => {
            let dst = register_to_string(register);
            let value = operand_to_boogie(&Operand::Immediate(*value));

            BoogieInstruction::Instr("li".to_string(), dst, vec![value])
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
                vec![aq.to_string(), rl.to_string(), src_reg],
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
                    aq.to_string(),
                    rl.to_string(),
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
                    atomic_op,
                    aq.to_string(),
                    rl.to_string(),
                    src_reg,
                    addr_op,
                ],
            )
        }
        RiscvInstruction::Return => BoogieInstruction::Return,
        _ => BoogieInstruction::Unhandled(format!("// unimplemented {:?}", instr)),
    }
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

fn operand_to_boogie(operand: &Operand) -> String {
    match operand.clone() {
        Operand::Register(reg) => register_to_string(&reg),
        Operand::Immediate(val) => val.to_string(),
        Operand::Memory(op) => {
            if op.offset == 0 {
                register_to_string(&op.base)
            } else {
                format!("{}+{}", register_to_string(&op.base), op.offset)
            }
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
