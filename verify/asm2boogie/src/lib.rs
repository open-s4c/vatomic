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
pub enum FunctionClass {
    Read,
    Write,
    Await,
    AwaitRmw,
    Rmw,
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
    "set" => "set_op",
    "min" => "min_op",
    "max" => "max_op",
};

lazy_static! {
    static ref RMW_RE : Regex = Regex::new(r"add|sub|set|cmpxchg|min|max|xchg").unwrap(); 
    static ref ORDERING_RE : Regex = Regex::new(r"(_rlx|_acq|_rel|)$").unwrap(); 
    static ref AWAIT_RE : Regex = Regex::new(r"await_([^_]+)").unwrap();
    static ref WIDTH_RE : Regex = Regex::new(r"ptr|64|sz|8|32").unwrap();
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
        FunctionClass::Rmw
    }
}


fn get_templates_for_type(func_type: FunctionClass) -> Vec<&'static str> {
    match func_type {
        FunctionClass::Read => vec!["read_only.bpl", "read.bpl"],
        FunctionClass::Write => vec!["write.bpl", "must_store.bpl"],
        FunctionClass::Await => vec!["read_only.bpl", "read.bpl", "await.bpl"],
        FunctionClass::Rmw => vec!["read.bpl", "write.bpl", "rmw.bpl"],
        FunctionClass::AwaitRmw => vec!["read.bpl", "write.bpl", "rmw.bpl", "await.bpl"],
        FunctionClass::Fence => vec!["fence.bpl"],
    }
}


fn get_assumptions(func_type: &str, load_order : &'static str , store_order : &'static str, rmw_op : &'static str, ret_op : &'static str, cond : &'static str) -> String {
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


pub fn wide_arch_widths(type_name : &str) -> Width {
    match type_name { "32" | "8" => Width::Thin, _ => Width::Wide }
}

pub fn thin_arch_widths(type_name : &str) -> Width {
    match type_name { "32" | "8" | "sz" | "ptr" => Width::Thin, _ => Width::Wide }
}

pub fn generate_boogie_file(
    function: &ArmFunction,
    output_dir: &str,
    template_dir: &str,
    type_map: fn(&str) -> Width,
) -> Result<(), std::io::Error> {
    
    let func_type = classify_function(&function.name);
    let templates = get_templates_for_type(func_type);

    let boogie_code = arm_to_boogie_code(function);
    let registers = get_used_registers(function);

    let arm_state = "local_monitor, monitor_exclusive, flags, event_register";
    
    let type_width = WIDTH_RE.captures(&function.name).map(|fn_type| type_map(&fn_type[0])).unwrap_or(Width::Wide);

    let address = "x0";
    let output = match type_width { Width::Thin => "w0", _ => "x0" };
    let input1 = match type_width { Width::Thin => "w1", _ => "x1" };
    let input2 = match type_width { Width::Thin => "w2", _ => "x2" };

    let target_path = Path::new(output_dir).join(&function.name);
    fs::create_dir_all(&target_path)?;

    for template in templates {
        let template_path = Path::new(template_dir).join(template);
        let template_content = fs::read_to_string(&template_path)?;


        let mut rmw_op = ""; 
        let mut read_ret = "ret_old"; 
        if let Some(rmw_name) = RMW_RE.captures(&function.name) {
            if let Some(op) = RMW_OP.get(&rmw_name[0]) {
                rmw_op = op;

                if function.name.contains("get") {
                    read_ret = op;
                }
            }
        }

        let mut await_cond = ""; 
        if let Some(await_name) = AWAIT_RE.captures(&function.name) {
            if let Some(op) = AWAIT_OP.get(&await_name[1]) {
                await_cond = op;
            }
        }

        let ordering = ORDERING_RE.captures(&function.name).unwrap();
        let (load_order, store_order) = if func_type == FunctionClass::Fence {
            (FENCE_ORDERING[&ordering[0]], "")  
        } else {
            ORDERING[&ordering[0]]
        };

        let boogie_code_with_assume = format!("    assume (last_store < step);\n{}\n{}", get_assumptions(template, load_order, store_order, rmw_op, read_ret, await_cond), boogie_code);
    
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
