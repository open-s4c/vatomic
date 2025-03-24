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



#[derive(Debug, Clone, PartialEq)]
pub enum FunctionClass {
    Read,
    Write,
    Await,
    AwaitRmw,
    Rmw,
}



static ORDERING: phf::Map<&'static str, (&'static str,&'static str)> = phf_map! {
    "" => ("order_acq_sc","order_rel_sc"),
    "_rlx" => ("order_acq","order_rlx"),
    "_acq" => ("order_rlx","order_rel"),
    "_rel" => ("order_rlx","order_rlx"),
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
// @TODO    "sub" => "",
    "set" => "set_op",
    "min" => "min_op",
    "max" => "max_op",
};

lazy_static! {
    static ref RMW_RE : Regex = Regex::new(r"add|sub|set|cmpxchg|min|max|xchg").unwrap(); 
    static ref ORDERING_RE : Regex = Regex::new(r"(_rlx|_acq|_rel|)$").unwrap(); 
    static ref AWAIT_RE : Regex = Regex::new(r"await_([^_]+)").unwrap(); 
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
    } else {
        FunctionClass::Rmw
    } // @TODO: fences!
}


fn get_templates_for_type(func_type: FunctionClass) -> Vec<&'static str> {
    match func_type {
        FunctionClass::Read => vec!["read_only.bpl", "read.bpl"],
        FunctionClass::Write => vec!["write.bpl", "must_store.bpl"],
        FunctionClass::Await => vec!["read_only.bpl", "read.bpl", "await.bpl"],
        FunctionClass::Rmw => vec!["read.bpl", "write.bpl", "rmw.bpl"],
        FunctionClass::AwaitRmw => vec!["read.bpl", "write.bpl", "rmw.bpl", "await.bpl"],
    }
}


fn get_assumptions(func_type: &str, load_order : &'static str , store_order : &'static str, rmw_op : &'static str, ret_op : &'static str, cond : &'static str) -> String {
    match func_type {
        "read.bpl" => std::format!("    assume (last_store < step);\n    assume (load_order == {});\n    assume (ret == {});\n", load_order, ret_op),
        "write.bpl" => std::format!("    assume (last_store < step);\n    assume (store_order == {});\n", store_order),
        "await.bpl" => std::format!("    assume (last_store < step);\n    assume (cond == {});\n", cond),
        "rmw.bpl" => std::format!("    assume (last_store < step);\n    assume (op == {});\n", rmw_op),
        _ => "".to_string(),
    }
}

pub fn generate_boogie_file(
    function: &ArmFunction,
    output_dir: &str,
    template_dir: &str,
) -> Result<(), std::io::Error> {
    let func_type = classify_function(&function.name);
    let templates = get_templates_for_type(func_type);

    let boogie_code = arm_to_boogie_code(function);
    let registers = get_used_registers(function);

    let arm_state = "local_monitor, monitor_exclusive, flags, event_register";
    let address = "x0";
    let output = "x0";
    let input1 = "x1";
    let input2 = "x2";

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
            if let Some(op) = AWAIT_OP.get(&await_name[0]) {
                await_cond = op;
            }
        }

        let ordering = ORDERING_RE.captures(&function.name).unwrap();
        let (load_order, store_order) = ORDERING.get(&ordering[0]).unwrap();

        let boogie_code_with_assume = format!("{} {}", get_assumptions(template, load_order, store_order, rmw_op, read_ret, await_cond), boogie_code);
    
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
