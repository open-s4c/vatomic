require 'optparse'

options = {}
options[:generate] = true;
options[:which] = "atomics_list_full.txt"
options[:where] = "out"
options[:archs] = ["arm-v8","riscv"]
options[:extract] = true

OptionParser.new do |opts|
  opts.banner = "Usage: verify_all.rb [options]"

  opts.on("-s", "--specified=PATH/TO/ATOMICS_LIST", "verify only specified functions") do |v|
    options[:generate] = false
    options[:which] = v
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


def verify(out,atomic,template)
    `boogie ../boogie/auxiliary.bpl ../boogie_armv8/library.bpl  ../boogie/sc-impl/rcsc.bpl #{out}/#{atomic}/#{template}`.strip
end



if options[:generate]
    `ruby gen_atomic_list.rb > #{options[:which]}`
end

if options[:extract]
    options[:archs].each { |arch|
        `cargo run -- --input data/atomic.s --functions #{options[:which]} --templates ../boogie/templates/ --directory #{options[:where]}/#{arch} --arch #{arch}`
    }
end

options[:archs].each { |arch|   
    base_path = File.join(options[:where], arch)
    Dir::children(base_path).each { |atomic|
        puts "======================="
        puts "verifying #{atomic} on #{arch}"
        Dir::children(File.join(base_path,atomic)).each { |template|
            puts "#{template}:"
            puts verify(base_path, atomic, template)
            puts "\n"
        }
    }
}
