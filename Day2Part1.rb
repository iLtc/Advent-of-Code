keypad = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
currentY = 1
currentX = 1

lines = Array.new

while(true)
  temp = gets.strip

  if temp.empty?
    break
  end

  lines.push(temp)
end

lines.each do |line|
  line.split("").each do |step|
    case step
      when "U"
        currentY -= 1 if currentY > 0 and keypad[currentY - 1][currentX] != nil

      when "D"
        currentY += 1 if currentY < 2 and keypad[currentY + 1][currentX] != nil

      when "L"
        currentX -= 1 if currentX > 0 and keypad[currentY][currentX - 1] != nil

      when "R"
        currentX += 1 if currentX < 2 and keypad[currentY][currentX + 1] != nil
    end

  end

  print keypad[currentY][currentX]
end

puts