mod parser;
mod transform;

// pub use genegrate::{arm_to_boogie_code, get_address_registers, get_used_registers};
pub use parser::parse_riscv_assembly;
pub use transform::{extract_riscv_functions, remove_directives, transform_labels};

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

#[derive(Debug, Clone, PartialEq)]
pub enum ComparisonOp {
    Eq,  // Equal (for beq)
    Ne,  // Not equal (for bne)
    Lt,  // Less than, signed (for blt)
    Ge,  // Greater than or equal, signed (for bge)
    Ltu, // Less than, unsigned (for bltu)
    Geu, // Greater than or equal, unsigned (for bgeu)
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
