array = [*1..10]
puts array[1]
puts array.last
puts array.length

array.unshift(0)
print array

array << 11
print array

x = 0
while x < array.length
  # print array[x]
  res = array[x] * 2
  if res.even? && res != 0
    puts res.to_s + ' is an even number'
  else res.to_s + ' is an odd number'
  end
  x += 1
end

print array.select { |element| element.even?}
print array.select { |element| element.odd?}

