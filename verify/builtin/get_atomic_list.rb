folder = "lists"

all_lines = Dir["#{folder}/*.txt"].flat_map do |file|
  File.readlines(file).map(&:chomp)
end

all_lines.uniq!
all_lines.sort!

all_lines.each { |line| puts line }
