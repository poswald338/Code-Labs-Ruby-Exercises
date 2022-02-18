user_input = gets.chomp
puts "You typed #{user_input}"

def multiply_by_two(x)
  x * 2
end
def divide_by_two(x)
  x / 2
end

puts multiply_by_two(user_input.to_i)
puts divide_by_two(user_input.to_i)