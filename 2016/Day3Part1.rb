count = 0
triangles = Array.new

while(true)
  temp = gets.strip.split(/\s+/).map(&:to_i).sort!

  if temp.empty?
    break
  end

  triangles.push(temp)
end

triangles.each do |triangle|
  if(triangle[0] + triangle[1] > triangle[2])
    count += 1
  end
end

puts count