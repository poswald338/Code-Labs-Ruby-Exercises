ARRAY = [2,7,11,15]

puts "What is your target?"
target = gets.chomp.to_i

ARRAY.each_with_index do |num, index|
  x = index
  found = false
  if !found
    while x < ARRAY.length do
      next_idx = x + 1
      break if ARRAY[next_idx] === nil
      match = num + ARRAY[x + 1]
      if match === target 
        puts index
        puts next_idx
        found = true
        break
      end
      x += 1
    end
  end
end

