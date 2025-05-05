require 'optparse'
require 'set'

Archs = { "arm-v8" => ["armv8", "atomic.s"], "risc-v" => ["risc", "atomic_riscv.s"] }
options = {}
options[:generate] = true;
options[:which] = "atomics_list_full.txt"
options[:where] = "out"
options[:archs] = Archs.keys
options[:extract] = true
options[:phases] = Set.new [ 1, 2 ]

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

  opts.on("-p", "--phases=PHASE1,...,PHASEN", "Only do these verification phase") do |v|
    options[:phases] = Set.new (v.split.map { |s| s.to_i })
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


def compile(asm_file, library, functions_path, out, arch, unroll = false)
  `cargo run -- --input data/#{asm_file} --functions #{functions_path} --templates ../boogie/templates/ --directory #{out}/#{arch} --arch #{arch} #{ unroll ? "--unroll" : nil }`
end

if options[:extract]
    options[:archs].each { |arch|
        (library, asm_file) = Archs[arch]
        compile(asm_file, library, options[:which], options[:where], arch)
    }
end

def drop_extension(path)
  File.basename(path, File.extname(path))
end


def verify_all(archs, out, limit)
  $results = {}
  archs.each { |arch|   
    base_path = File.join(out, arch)
    $results[arch] = Parallel.map(Dir::children(base_path), in_processes: 10) { |atomic|
      if ! limit || limit[:functions].include?(atomic)
        lines = ["=======================", 
          "verifying #{atomic} on #{arch}",
        ]
        local_results = []
        Dir::children(File.join(base_path,atomic)).each { |template|
          base_template = drop_extension(template)
          if ! limit || limit[:properties].include?(base_template)
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
    }.flatten 1
  }
end


require 'pp'
require 'parallel'
begin
  if options[:phases].include? 1
    verify_all(options[:archs], options[:where], options[:limit])
    puts ""
    puts "finished simple verification"
    puts ""
  end
      
ensure
  if $results.any? { |result| result.any? { |(_,_,pass)| ! pass }} 
    if /FAILED_/ =~ options[:which]
      puts "to rerun:\n\n    ruby #{__FILE__} -a #{options[:archs].join(",")} -s #{options[:which]}"
    else
      failed_file = "FAILED_#{options[:which]}"

      File.open(failed_file, "w") do |f|
        f.write($results.map { |_arch, result| result.filter { |(_,_,pass)| ! pass }.map {|(atomic,_,_)| atomic} }.flatten.join("\n"))
      end
      
      puts ""
      
      puts "to rerun all failed atomics:\n\n    ruby #{__FILE__} -a #{options[:archs].join(",")} -s #{failed_file}"

      if options[:phases].include? 2
        puts ""
        puts ""
        puts ""
        puts "========================================================="
        puts "*                                                       *"
        puts "*    retrying failed atomics with heavy verification    *"
        puts "*                                                       *"
        puts "========================================================="
        puts ""
        puts ""
        puts ""
        
        retry_out = "#{options[:where]}_retry"
        options[:archs].each { |arch|
            (library, asm_file) = Archs[arch]
            compile(asm_file, library, failed_file, retry_out, arch, unroll=true)
        }


        verify_all(options[:archs], retry_out, nil)

        puts ""
        puts "finished heavy verification"
      end
    end
  end

  if $results.all? { |_arch, result| result.all? { |(_,_,pass)| pass }} 
    puts "no failures found"
  end
end