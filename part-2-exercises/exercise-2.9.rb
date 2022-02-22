ROMAN_VALS = {
  i: 1,
  v: 5,
  x: 10,
  l: 50,
  c: 100,
  d: 500,
  m: 1000
}
loop_var = ''
while loop_var != 'exit'

  puts "Type in a roman numeral"
  input = gets.chomp.downcase

  val = input.split('').map { |n| n.to_sym }
  calc = 0
  val.each_with_index do |num, idx|
    if (idx +1) < val.length && ROMAN_VALS[num] < ROMAN_VALS[val[idx + 1]] 
      calc -= ROMAN_VALS[num]
    else
      calc += ROMAN_VALS[num]
    end
  end
  puts
  puts "#{input.upcase} >>> #{calc}"
  25.times {print'-'} 
  puts
  puts "enter exit to quit or anything else to continue"

  loop_var = gets.chomp
end