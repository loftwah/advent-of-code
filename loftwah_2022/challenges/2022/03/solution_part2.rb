input = File.read("input.txt")
score = 0

input.each_line do |line|
  # Split the line into the two compartments
  comp1 = line[0...(line.length / 2)]
  comp2 = line[(line.length / 2)..-1]
  # Iterate over the characters in the first compartment
  comp1.chars.each do |char|
    # If the character exists in the second compartment
    if comp2.include?(char)
      # if letter is lowercase print true
      if char == char.downcase
        score += (char.ord - "a".ord + 1)
      end
      if char == char.upcase
        score += (char.ord - "A".ord + 27)
      end
      puts score
      break
    end
  end
end

puts score
