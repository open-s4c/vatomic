require 'optparse'

Archs = { "arm-v8" => ["armv8", "atomic.s"], "risc-v" => ["risc", "atomic_riscv.s"] }
options = {}
options[:generate] = true;
options[:which] = "atomics_list_full.txt"
options[:where] = "out"
options[:archs] = Archs.keys
options[:extract] = true

OptionParser.new do |opts|
  opts.banner = "Usage: verify_all.rb [options]"

  opts.on("-s", "--specified=PATH/TO/ATOMICS_LIST|fun1,...,funk:prop1,...,propn", "verify only specified functions & properties") do |v|
    options[:generate] = false

    if /\w+(,\w+)*:\w+(,\w+)*/ =~ v
      funcs, ops = v.split(":").map { |foo| foo.split(",") }
      options[:limit] = { :functions => funcs, :properties => ops } 
      puts "only verifying #{funcs} : #{ops}" 
    else
      options[:which] = v
    end
  end

  
  opts.on("-a", "--architectures=ARCH1,...,ARCHn", "only verify specified architectures") do |v|
    options[:archs] = v.split.map { |s| s.strip }
  end

  opts.on("-o", "--output=PATH/TO/OUT", "output folder of templates") do |v|
    options[:where] = v
  end

  opts.on("-v", "--verify-only", "only do verification") do |v|
    options[:extract] = false
  end

  opts.on("-h", "--help", "Prints this help") do
    puts opts
    exit
  end
end.parse!


def verify(arch, out, atomic, template)
  (library, asm_file) = Archs[arch]
  `boogie ../boogie/auxiliary.bpl ../boogie_#{library}/library.bpl #{out}/#{atomic}/#{template}`.strip
end



if options[:generate]
    `ruby gen_atomic_list.rb > #{options[:which]}`
end



if options[:extract]
    options[:archs].each { |arch|
        (library, asm_file) = Archs[arch]
        `cargo run -- --input data/#{asm_file} --functions #{options[:which]} --templates ../boogie/templates/ --directory #{options[:where]}/#{arch} --arch #{arch}`
    }
end

def drop_extension(path)
  File.basename(path, File.extname(path))
end

$results = {}

require 'parallel'
begin
  options[:archs].each { |arch|   
      base_path = File.join(options[:where], arch)
      $results[arch] = Parallel.map(Dir::children(base_path), in_processes: 10) { |atomic|
        if ! options[:limit] || options[:limit][:functions].include?(atomic)
          lines = ["=======================", 
            "verifying #{atomic} on #{arch}",
          ]
          local_results = []
          Dir::children(File.join(base_path,atomic)).each { |template|
            base_template = drop_extension(template)
            if ! options[:limit] || options[:limit][:properties].include?(base_template)
              lines << "#{template}:"
              out = verify(arch, base_path, atomic, template)
              lines << out
              pass = /0 errors/ =~ out
              local_results << [atomic, template, pass]
              
              if ! pass
                lines << "to rerun this test:\n\n    ruby #{__FILE__} -a #{arch} -s #{atomic}:#{base_template}\n"
              end

              lines << "\n"
            end
          }
          puts lines
          local_results
        end
      }
    }.flatten
  puts "finished verification"
ensure
  if $results.any? { |result| result.any? { |(_,_,pass)| ! pass }} 
    if /FAILED_/ =~ options[:which]
      puts "to rerun:\n\n    ruby #{__FILE__} -a #{options[:archs].join(",")} -s #{options[:which]}"
    else
      failed_file = "FAILED_#{options[:which]}"
      File.open(failed_file, "w") do |f|
        f.write($results.map { |result| result.filter { |(_,_,pass)| pass }.map {|(atomic,_,_)| atomic} }.flatten.join("\n"))
      end
      puts "to rerun all failed atomics:\n\n    ruby #{__FILE__} -a #{options[:archs].join(",")} -s #{failed_file}"
    end
  else
    puts "no failures found"
  end
end