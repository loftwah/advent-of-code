input = File.read("input.txt")
score = 0
input.each_line do |line|
    if line[0] == "A" && line[2] == "Y"
        score += 4
        puts "Draw with Rock, the current score is #{score}"
    end
    if line[0] == "A" && line[2] == "X"
        score += 3
        puts "Lose with Scissors, the current score is #{score}"
    end
    if line[0] == "A" && line[2] == "Z"
        score += 8
        puts "Win with Paper, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "Z"
        score += 9
        puts "Win with Scissors, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "Y"
        score += 5
        puts "Draw with Paper, the current score is #{score}"
    end
    if line[0] == "B" && line[2] == "X"
        score += 1
        puts "Lose with Rock, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "X"
        score += 2
        puts "Lose with Paper, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "Z"
        score += 7
        puts "Win with Rock, the current score is #{score}"
    end
    if line[0] == "C" && line[2] == "Y"
        score += 6
        puts "Draw with Scissors, the current score is #{score}"
    end
end
puts "Final score: #{score}"