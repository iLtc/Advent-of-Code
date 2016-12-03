count = 0
triangles = Array.new

while(true)
  begin
    temp1 = gets.strip.split(/\s+/).map(&:to_i)
    temp2 = gets.strip.split(/\s+/).map(&:to_i)
    temp3 = gets.strip.split(/\s+/).map(&:to_i)
  rescue
    break
  end

  (0..2).each do |i|
    triangles.push([temp1[i], temp2[i], temp3[i]])
  end
end

triangles.each do |triangle|
  triangle.sort!

  if(triangle[0] + triangle[1] > triangle[2])
    count += 1
  end
end

puts count