lines = Array.new

while(true)
  temp = gets.strip

  if temp.empty?
    break
  end

  lines.push(temp)
end

current = 5

lines.each do |line|
  line.split("").each do |step|
    case step
      when "U"
        current -= 3 if current > 3

      when "D"
        current += 3 if current < 7

      when "L"
        current -= 1 unless [1, 4, 7].include?(current)

      when "R"
        current += 1 unless [3, 6, 9].include?(current)
    end
  end

  print current
end