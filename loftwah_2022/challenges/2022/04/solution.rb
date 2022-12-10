def are_pairs_containing(pair1, pair2)
  min1, max1 = pair1
  min2, max2 = pair2
  (min1 <= min2 && max2 <= max1) || (min2 <= min1 && max1 <= max2)
end

def are_pairs_overlapping(pair1, pair2)
  min1, max1 = pair1
  min2, max2 = pair2
  (min1 <= min2 && min2 <= max1) || (min2 <= min1 && min1 <= max2)
end

def part_one(filename)
  assignments = parse_input(filename)
  count = 0
  assignments.each do |pair|
    count += 1 if are_pairs_containing(pair[0], pair[1])
  end
  count
end

def part_two(filename)
  assignments = parse_input(filename)
  count = 0
  assignments.each do |pair|
    count += 1 if are_pairs_overlapping(pair[0], pair[1])
  end
  count
end

def parse_input(filename)
  assignments = []
  File.foreach(filename, encoding: "utf-8") do |line|
    a, b, c, d = line.strip.scan(/\d+/).map(&:to_i)
    assignments << [[a, b], [c, d]]
  end
  assignments
end

input_path = "input.txt"
puts part_one(input_path)
puts part_two(input_path)
