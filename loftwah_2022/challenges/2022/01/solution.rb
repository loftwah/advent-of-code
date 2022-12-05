# read input.txt as a variable
input = File.read("input.txt")
# each elf is split by a blank line, how many elves are there in my text file?
elf_count = input.split("\n\n").length
puts "Number of elves: #{elf_count}"
# add up the numbers in each section and print the amount for the highest section
total_calories = input.split("\n\n").map { |elf| elf.split("\n").map(&:to_i).sum }.max
puts "Total calories in the section with the most: #{total_calories}"