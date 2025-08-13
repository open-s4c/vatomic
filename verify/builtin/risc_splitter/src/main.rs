use clap::Parser;
use std::fs::File;
use std::io::{BufRead, BufReader, Write};
use std::path::PathBuf;

#[derive(Parser, Debug)]
struct Args {
    #[clap(short, long)]
    input: String,
    #[clap(short, long)]
    output: String,
}

fn process_part(part: &str) -> Vec<String> {
    if part.ends_with(':') {
        vec![part.to_string()]
    } else if let Some(pos) = part.find(':') {
        let label = part[..pos + 1].to_string();
        let instruction = part[pos + 1..].trim_start();
        let mut result = Vec::new();
        if !label.is_empty() {
            result.push(label);
        }
        if !instruction.is_empty() {
            if instruction.starts_with('\t') {
                result.push(instruction.to_string());
            } else {
                result.push(format!("\t{}", instruction));
            }
        }
        result
    } else {
        vec![part.to_string()]
    }
}

fn process_line(line: &str) -> Vec<String> {
    if line.is_empty() {
        return vec![String::new()];
    }

    if !line.contains(';') {
        let parts = process_part(line);
        parts
    } else {
        let parts: Vec<&str> = line
            .split(';')
            .map(|s| s.trim())
            .filter(|s| !s.is_empty())
            .collect();
        let mut result = Vec::new();
        for part in parts {
            let processed = process_part(part);
            for p in processed {
                if p.starts_with('\t') {
                    result.push(p);
                } else {
                    result.push(format!("\t{}", p));
                }
            }
        }
        result
    }
}

fn main() {
    let args = Args::parse();

    let input_path = PathBuf::from(args.input);
    let file = File::open(&input_path).expect("Failed to open input file");
    let reader = BufReader::new(file);

    let mut output = File::create(args.output).expect("Failed to create output file");

    for line in reader.lines() {
        let line = line.expect("Failed to read line");
        let processed = process_line(&line);
        for p in processed {
            writeln!(output, "{}", p).expect("Failed to write to output");
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_process_part_instruction_only() {
        let result = process_part("fence iorw,ow");
        assert_eq!(result, vec!["fence iorw,ow"]);
    }

    #[test]
    fn test_process_part_label_and_instruction() {
        let result = process_part("1: lr.d.aq a5,0(a4)");
        assert_eq!(result, vec!["1:", "\tlr.d.aq a5,0(a4)"]);
    }

    #[test]
    fn test_process_part_label_only() {
        let result = process_part("1:");
        assert_eq!(result, vec!["1:"]);
    }

    #[test]
    fn test_process_line_no_semicolon() {
        let result = process_line("\tmv a4,a0");
        assert_eq!(result, vec!["\tmv a4,a0"]);
    }

    #[test]
    fn test_process_line_with_semicolons() {
        let input = "\tfence iorw,ow; 1: lr.d.aq a5,0(a4); bne a5,a0,1f; 1:";
        let expected = vec![
            "\tfence iorw,ow",
            "\t1:",
            "\tlr.d.aq a5,0(a4)",
            "\tbne a5,a0,1f",
            "\t1:",
        ];
        let result = process_line(input);
        assert_eq!(result, expected);
    }
}
