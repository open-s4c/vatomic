use asm2boogie::{
    Arch, ToBoogie, arm::ArmFunction, generate_boogie_file, generate_debug_file,
    riscv::RiscvFunction, wide_arch_widths,
};

use clap::Parser;
use std::fs;
use std::path::Path;

enum OutputMode {
    File(String),
    Directory(String),
}

#[derive(Parser, Debug)]
#[clap(author, version, about = "Generate Verifiable Boogie Code from ASM", long_about = None)]
struct Args {
    #[clap(
        short = 'a',
        long,
        value_enum,
        default_value = "armv8",
        help = "Target architecture (armv8 or riscv)"
    )]
    arch: Arch,
    #[clap(short = 'i', long, value_name = "FILE", help = "input file")]
    input: String,
    #[clap(short = 'f', long, value_name = "FILE", help = "function names")]
    functions: String,
    #[clap(
        short = 'o',
        long,
        value_name = "FILE",
        help = "Sets the output file",
        conflicts_with = "directory"
    )]
    output: Option<String>,
    #[clap(
        short = 'd',
        long,
        value_name = "DIR",
        help = "Sets the output directory",
        conflicts_with = "output"
    )]
    directory: Option<String>,
    #[clap(short = 't', long, value_name = "DIR", help = "template directory")]
    templates: Option<String>,
}

fn read_function_names(file_path: &str) -> Result<Vec<String>, std::io::Error> {
    let content = fs::read_to_string(file_path)?;
    Ok(content
        .lines()
        .map(str::trim)
        .filter(|s| !s.is_empty())
        .map(String::from)
        .collect())
}

fn ensure_directory_exists(path: &str) -> Result<(), std::io::Error> {
    if Path::new(path).exists() {
        fs::remove_dir_all(path)?;
    }

    fs::create_dir_all(path)?;
    Ok(())
}

fn main() -> Result<(), Box<dyn std::error::Error>> {
    env_logger::init();
    let args = Args::parse();

    let output_mode = match (&args.output, &args.directory) {
        (Some(file), None) => OutputMode::File(file.clone()),
        (None, Some(dir)) => {
            if args.templates.is_none() {
                eprintln!("Error: --templates is required when --directory is specified.");
                std::process::exit(1);
            }
            OutputMode::Directory(dir.clone())
        }
        (None, None) => {
            eprintln!("Error: Either --output or --directory must be specified.");
            std::process::exit(1);
        }
        (Some(_), Some(_)) => {
            unreachable!("Clap should prevent both output and directory from being specified.");
        }
    };

    let function_names = read_function_names(&args.functions).unwrap_or_else(|e| {
        eprintln!("Error reading functions file '{}': {}", args.functions, e);
        std::process::exit(1);
    });

    log::info!("Input file: {}", args.input);
    log::info!("Functions file: {}", args.functions);
    log::info!("Arch: {:?}", args.arch);

    if let Some(output) = &args.output {
        log::info!("Output file: {}", output);
    }
    if let Some(directory) = &args.directory {
        log::info!("Output directory: {}", directory);
    }
    if let Some(templates) = &args.templates {
        log::info!("Template directory: {}", templates);
    }

    log::info!("Function Extraction Names: {:?}", function_names);

    let input_content = fs::read_to_string(&args.input).unwrap_or_else(|e| {
        eprintln!("Error reading input file '{}': {}", args.input, e);
        std::process::exit(1);
    });
    log::info!("Successfully read input file '{}'", args.input);

    let width_map = match args.arch {
        Arch::ArmV8 => wide_arch_widths,
        Arch::RiscV => wide_arch_widths,
    };

    let valid_prefix: &[&str] = match args.arch {
        Arch::ArmV8 => &["ptr", "32", "64", "sz", "8", ""],
        Arch::RiscV => &["64"],
    };

    let boogie_functions = match args.arch {
        Arch::ArmV8 => match ArmFunction::parse_and_transform(
            &input_content,
            Some(&function_names),
            valid_prefix,
        ) {
            Ok(functions) => functions,
            Err(e) => {
                log::error!("Error parsing arm assembly: {:?}", e);
                std::process::exit(1);
            }
        }
        .into_iter()
        .map(ToBoogie::to_boogie)
        .collect::<Vec<_>>(),
        Arch::RiscV => match RiscvFunction::parse_and_transform(
            &input_content,
            Some(&function_names),
            valid_prefix,
        ) {
            Ok(functions) => functions,
            Err(e) => {
                log::error!("Error parsing riscv assembly: {:?}", e);
                std::process::exit(1);
            }
        }
        .into_iter()
        .map(ToBoogie::to_boogie)
        .collect::<Vec<_>>(),
    };

    match output_mode {
        OutputMode::File(file_path) => {
            log::info!("Generating output file: {}", file_path);
            generate_debug_file(&boogie_functions, &file_path)?;
        }
        OutputMode::Directory(dir_path) => {
            let template_dir = args.templates.as_ref().unwrap();
            log::info!("Generating output files in directory: {}", dir_path);
            ensure_directory_exists(&dir_path)?;

            for function in &boogie_functions {
                log::info!("Generating Boogie code for function: {}", function.name);
                generate_boogie_file(function, &dir_path, template_dir, args.arch, width_map)?;
            }
        }
    }

    log::info!("Successfully generated Boogie code");
    Ok(())
}
