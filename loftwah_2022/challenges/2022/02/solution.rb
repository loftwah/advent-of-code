input = File.read("input.txt")
score = 0
input.each_line do |line|
    if line[0] == "A" && line[2] == "Y"
        score += 6
        puts "Win 6 points, the current score is #{score}"
    end
    if line[0] == "A" && line[2] == "X"
        score += 3
        puts "Draw 3 points, the current score is #{score}"
    end
    if line[0] == "A" && line[2] == "Z"
        score += 0
        puts "Lose 0 points, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "Z"
        score += 6
        puts "Win 6 points, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "Y"
        score += 3
        puts "Draw 3 points, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "X"
        score += 3
        puts "Lose 0 points, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "X"
        score += 6
        puts "Win 6 points, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "Z"
        score += 3
        puts "Draw 3 points, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "Y"
        score += 0
        puts "Lose 0 points, the current score is #{score}"
    end
end
puts "Final score: #{score}"