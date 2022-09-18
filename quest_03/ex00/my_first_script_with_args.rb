# loop to receive arguments from CLI and print out each one

for element in 0...ARGV.length
    puts "#{element} #{ARGV[element]}"
end 