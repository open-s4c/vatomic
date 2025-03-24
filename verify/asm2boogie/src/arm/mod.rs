mod generate;
mod parser;
mod transform;

pub use generate::{arm_to_boogie_code, get_address_registers, get_used_registers};
pub use parser::parse_arm_assembly;
pub use transform::{extract_arm_functions, remove_directives, transform_labels};

#[derive(Debug, Clone, PartialEq)]
pub enum RegisterType {
    X, // 64-bit general purpose register
    W, // 32-bit general purpose register
    V, // SIMD/FP register
    Q, // 128-bit SIMD register
    D, // 64-bit SIMD register
    S, // 32-bit SIMD register
    H, // 16-bit SIMD register
    B, // 8-bit SIMD register
    SP,
}

#[derive(Debug, Clone, PartialEq)]
pub struct Register {
    pub reg_type: RegisterType,
    pub number: u8,
}

#[derive(Debug, Clone, PartialEq)]
pub enum AddressingMode {
    // [Xn]
    BaseRegister(Register),
    // [Xn, #imm]
    BaseRegisterWithOffset(Register, i64),
    // [Xn, #imm]!
    PreIndexed(Register, i64),
    // [Xn], #imm
    PostIndexed(Register, i64),
}

#[derive(Debug, Clone, PartialEq)]
pub enum Operand {
    Register(Register),
    ImmediateValue(i64),
    Memory(AddressingMode),
    Label(String),
    ShiftedRegister(Register, String, i64),
    RegisterList(Vec<Register>),
}

#[derive(Debug, Clone, PartialEq)]
pub enum ConditionCode {
    EQ, // Equal
    NE, // Not equal
    CS, // Carry set
    CC, // Carry clear
    MI, // Minus, negative
    PL, // Plus, positive or zero
    VS, // Overflow
    VC, // No overflow
    HI, // Unsigned higher
    LS, // Unsigned lower or same
    GE, // Signed greater than or equal
    LT, // Signed less than
    GT, // Signed greater than
    LE, // Signed less than or equal
    AL, // Always (default)
    NV, // Never
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
pub enum ArithmeticOp {
    Add,
    Sub,
    Mul,
    And,
    Orr,
    Eor,
}

#[derive(Debug, Clone, PartialEq)]
pub enum ShiftOp {
    Lsl,
    Lsr,
    Asr,
}

#[derive(Debug, Clone, PartialEq)]
pub enum MemoryOp {
    Load,
    Store,
}

#[derive(Debug, Clone, PartialEq)]
pub enum MemorySize {
    Byte,   // 8-bit
    Half,   // 16-bit
    Word,   // 32-bit
    Double, // 64-bit
}

#[derive(Debug, Clone, PartialEq)]
pub struct MemoryAttrs {
    pub size: MemorySize,
    pub exclusive: bool,
    pub acquire: bool,
    pub release: bool,
}

#[derive(Debug, Clone, PartialEq)]
pub enum MoveOp {
    Mov,
    Mvn,
}

#[derive(Debug, Clone, PartialEq)]
pub enum ArmInstruction {
    Arithmetic(ArithmeticOp, Operand, Operand, Option<Operand>),

    Shift(ShiftOp, Operand, Operand),

    Move(MoveOp, Operand, Operand),

    Memory(MemoryOp, MemoryAttrs, Operand, Operand),
    MemoryPair(MemoryOp, Register, Register, AddressingMode),
    MemoryExclusive(MemoryOp, MemoryAttrs, Operand, Operand, Operand),
    Cmp(Operand, Operand),
    Csel(Operand, Operand, Operand, ConditionCode),

    Branch(Option<ConditionCode>, Operand),
    BranchLink(Operand),
    BranchLinkRegister(Operand),
    BranchRegister(Operand),
    Return(Option<Operand>),

    ConditionalBranch(bool, Operand, Operand),
    TestBitBranch(bool, Operand, Operand, Operand),

    Label(String),

    Directive(Directive),
    Unhandled(String),
}

#[derive(Debug, Clone)]
pub struct ArmFunction {
    pub name: String,
    pub instructions: Vec<ArmInstruction>,
}
