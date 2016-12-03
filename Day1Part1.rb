instructions = gets.strip.split(", ")
direction = 0
horizontal = 0
vertical = 0

instructions.each do |instruction|
  if(instruction[0] == "R")
    direction = (direction + 90) % 360
  else
    direction = (direction - 90) % 360
  end

  blocks = instruction[1..-1].to_i

  case direction
    when 0
      vertical += blocks

    when 180
      vertical -= blocks

    when 90
      horizontal += blocks

    when 270
      horizontal -= blocks

  end

end

puts vertical.abs + horizontal.abs