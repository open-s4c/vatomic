use std::{fs, io::Write, path::Path};
use phf::phf_map;

use arm::{ArmFunction, arm_to_boogie_code, get_used_registers};
use regex::Regex;
use lazy_static::lazy_static;

pub mod arm;
pub mod riscv;

#[derive(Debug, Clone, PartialEq)]
pub enum Operator {
    Immediate(String),
    Address(String),
    Label(String),
    Register(String),
}

#[derive(Debug, Clone, PartialEq)]
pub enum UnifiedInstruction {
    Label(String),
    Instr(String, Vec<Operator>),
    Branch(String, String),
}


#[derive(Debug, Clone, PartialEq, Copy)]
pub enum RmwType {
    Return,
    NoReturn,
}

#[derive(Debug, Clone, PartialEq, Copy)]
pub enum FunctionClass {
    Read,
    Write,
    Await,
    AwaitRmw,
    Rmw(RmwType),
    Fence,
}




static FENCE_ORDERING: phf::Map<&'static str, &'static str> = phf_map! {
    "" => "order_fence_sc",
    "_acq" => "order_fence_acq",
    "_rel" => "order_fence_rel",
    "_rlx" => "order_rlx",
};

static ORDERING: phf::Map<&'static str, (&'static str,&'static str)> = phf_map! {
    "" => ("order_acq_sc","order_rel_sc"),
    "_acq" => ("order_acq","order_rlx"),
    "_rel" => ("order_rlx","order_rel"),
    "_rlx" => ("order_rlx","order_rlx"),
};


static AWAIT_OP: phf::Map<&'static str, &'static str> = phf_map! {
    "eq" => "eq",
    "neq" => "neq",
    "lt" => "lt",
    "le" => "le",
    "gt" => "gt",
    "ge" => "ge",
};


static RMW_OP: phf::Map<&'static str, &'static str> = phf_map! {
    "cmpxchg" => "cmpset",
    "add" => "add_op",
    "sub" => "sub_op",
    "xchg" => "set_op",
    "set" => "set_op",
    "dec" => "dec_op",
    "inc" => "inc_op",
    "min" => "min_op",
    "max" => "max_op",
};



static ATOMIC_TYPE: phf::Map<&'static str, AtomicType> = phf_map! {
    "64" => AtomicType::V64,
    "sz" => AtomicType::VSZ,
    "ptr" => AtomicType::VPTR,
    "32" => AtomicType::V32,
    "16" => AtomicType::V16,
    "8" => AtomicType::V8,
    "" => AtomicType::VFENCE,
};



lazy_static! {
    static ref RETURNING_RMW : Regex = Regex::new(r"get|cmpxchg|xchg").unwrap(); 
    // @TODO: generate automatically from the keys
    static ref RMW_RE : Regex = Regex::new(r"(?<get_>get_)?(?<type>add|sub|set|cmpxchg|min|max|xchg|dec|inc)(?<_get>_get)?").unwrap(); 
    static ref ORDERING_RE : Regex = Regex::new(r"(_rlx|_acq|_rel|)$").unwrap(); 
    static ref AWAIT_RE : Regex = Regex::new(r"await_([^_]+)").unwrap();
    static ref WIDTH_RE : Regex = Regex::new(r"8|16|32|sz|ptr|64").unwrap();
}

fn classify_function(name: &str) -> FunctionClass {
    if name.contains("read") {
        FunctionClass::Read
    } else if name.contains("write") {
        FunctionClass::Write
    } else if name.contains("await") {
        if RMW_RE.is_match(name) {
            FunctionClass::AwaitRmw
        } else {
            FunctionClass::Await
        }
    } else if name.contains("fence") {
        FunctionClass::Fence
    } else {
        let ret = if RETURNING_RMW.captures(name).is_some() { RmwType::Return } else { RmwType::NoReturn };
        FunctionClass::Rmw(ret)
    }
}


fn get_templates_for_type(func_type: FunctionClass) -> Vec<&'static str> {
    match func_type {
        FunctionClass::Read => vec!["read_only.bpl", "read.bpl"],
        FunctionClass::Write => vec!["write.bpl", "must_store.bpl"],
        FunctionClass::Await => vec!["read_only.bpl", "read.bpl", "await.bpl"],
        FunctionClass::Rmw(RmwType::NoReturn) => vec!["write.bpl", "rmw.bpl"],
        FunctionClass::Rmw(RmwType::Return) => vec!["read.bpl", "write.bpl", "rmw.bpl"],
        FunctionClass::AwaitRmw => vec!["read.bpl", "write.bpl", "rmw.bpl", "await.bpl"],
        FunctionClass::Fence => vec!["fence.bpl"],
    }
}


fn get_assumptions(func_type: &str, load_order : & str , store_order : & str, rmw_op : & str, ret_op : & str, cond : & str) -> String {
    match func_type {
        "fence.bpl" => std::format!("    assume (fence_order == {});\n", load_order),
        "read.bpl" => std::format!("    assume (load_order == {});\n    assume (ret == {});\n", load_order, ret_op),
        "write.bpl" => std::format!("    assume (store_order == {});\n", store_order),
        "await.bpl" => std::format!("    assume (cond == {});\n", cond),
        "rmw.bpl" => std::format!("    assume (op == {});\n", rmw_op),
        _ => "".to_string(),
    }
}


#[derive(Debug, Clone, Copy, PartialEq)]
pub enum Width {
    Thin,
    Wide,
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum AtomicType {
    V64,
    VSZ,
    VPTR,
    V32,
    V16,
    V8,
    VFENCE,
}


pub fn wide_arch_widths(type_name : AtomicType) -> Width {
    match type_name { AtomicType::V32 | AtomicType::V8 => Width::Thin, _ => Width::Wide }
}

pub fn thin_arch_widths(type_name : AtomicType) -> Width {
    match type_name { AtomicType::V32 | AtomicType::V8 | AtomicType::VSZ | AtomicType::VPTR => Width::Thin, _ => Width::Wide }
}

pub fn generate_boogie_file(
    function: &ArmFunction,
    output_dir: &str,
    template_dir: &str,
    type_map: fn(AtomicType) -> Width,
) -> Result<(), std::io::Error> {
    let func_type = classify_function(&function.name);
    let templates = get_templates_for_type(func_type);

    let boogie_code = arm_to_boogie_code(function);
    let registers = get_used_registers(function);

    let arm_state = "local_monitor, monitor_exclusive, flags, event_register";
    
    let atomic_type = WIDTH_RE.captures(&function.name).map(|c| ATOMIC_TYPE[&c[0]]).unwrap_or(AtomicType::VFENCE);
    let type_width = type_map(atomic_type); 

    let address = "x0";
    let output = match type_width { Width::Thin => "w0", _ => "x0" };
    let input1 = match type_width { Width::Thin => "w1", _ => "x1" };
    let input2 = match type_width { Width::Thin => "w2", _ => "x2" };

    let target_path = Path::new(output_dir).join(&function.name);
    fs::create_dir_all(&target_path)?;

    
    let mut rmw_op = "".to_string(); 
    let mut read_ret = "ret_old".to_string();
    if let Some(rmw_name) = RMW_RE.captures(&function.name) {
        if let Some(op) = RMW_OP.get(rmw_name.name("type").unwrap().as_str()) {
            rmw_op = op.to_string();

            if rmw_name.name("get_").is_some() {
                read_ret = op.to_string();
            }
        }
    }

    let mut await_cond = "".to_string(); 
    if let Some(await_name) = AWAIT_RE.captures(&function.name) {
        if let Some(op) = AWAIT_OP.get(&await_name[1]) {
            await_cond = op.to_string();
        }
    }

    let ordering = ORDERING_RE.captures(&function.name).unwrap();
    let (load_order, store_order) = if func_type == FunctionClass::Fence {
        (FENCE_ORDERING[&ordering[0]], "")  
    } else {
        ORDERING[&ordering[0]]
    };

    
    match atomic_type {
        AtomicType::V8 => {
            await_cond = format!("bit8[{}]", await_cond);
            read_ret = format!("bit8[{}]", read_ret);
            rmw_op = format!("bit8[{}]", rmw_op);
        }, 
        AtomicType::V16 => {
            await_cond = format!("bit16[{}]", await_cond);
            read_ret = format!("bit16[{}]", read_ret);
            rmw_op = format!("bit16[{}]", rmw_op);
        },
        _ => {},
    }

    for template in templates {
        let template_path = Path::new(template_dir).join(template);
        let template_content = fs::read_to_string(&template_path)?;



        let boogie_code_with_assume = format!("    assume (last_store < step);\n{}\n{}", get_assumptions(template, load_order, store_order, &rmw_op, &read_ret, &await_cond), boogie_code);
    
        let content = template_content
        .replace("    #implementation", &boogie_code_with_assume)
        .replace("#registers", &registers)
        .replace("#address", address)
        .replace("#state", arm_state)
        .replace("#output", output)
        .replace("#input1", input1)
        .replace("#input2", input2);

        fs::write(&target_path.join(template), content)?;

    }

    println!("generated verification templates for function {}", function.name);
    Ok(())
}

pub fn generate_debug_file(code: &[ArmFunction], path: &str) -> Result<(), std::io::Error> {
    let mut file = fs::File::create(path)?;
    for function in code {
        let boogie_code = arm_to_boogie_code(function);
        let registers = get_used_registers(function);

        let content = format!(
            "// ---- {} ----\n{}\n{}\n",
            function.name, registers, boogie_code
        );
        writeln!(file, "{:#?}", content)?;
    }
    Ok(())
}
