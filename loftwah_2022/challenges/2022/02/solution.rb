input = File.read("input.txt")
score = 0
input.each_line do |line|
    if line[0] == "A" && line[2] == "Y"
        score += 8
        puts "Win 8 points, the current score is #{score}"
    end
    if line[0] == "A" && line[2] == "X"
        score += 4
        puts "Draw 4 points, the current score is #{score}"
    end
    if line[0] == "A" && line[2] == "Z"
        score += 3
        puts "Lose 3 points, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "Z"
        score += 9
        puts "Win 9 points, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "Y"
        score += 5
        puts "Draw 5 points, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "X"
        score += 1
        puts "Lose 1 points, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "X"
        score += 7
        puts "Win 7 points, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "Z"
        score += 6
        puts "Draw 6 points, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "Y"
        score += 2
        puts "Lose 2 points, the current score is #{score}"
    end
end
puts "Final score: #{score}"