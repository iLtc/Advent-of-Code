instructions = gets.strip.split(", ")
direction = 0
horizontal = 0
vertical = 0
locations = [[0, 0]]

instructions.each do |instruction|
  if(instruction[0] == "R")
    direction = (direction + 90) % 360
  else
    direction = (direction - 90) % 360
  end

  blocks = instruction[1..-1].to_i

  (1..blocks).each do
    case direction
      when 0
        vertical += 1

      when 180
        vertical -= 1

      when 90
        horizontal += 1

      when 270
        horizontal -= 1

    end

    if(locations.include?([vertical, horizontal]))
      puts vertical.abs + horizontal.abs
      exit
    else
      locations.push([vertical, horizontal])
    end
  end
end

