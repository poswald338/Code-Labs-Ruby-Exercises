puts "Enter first number:"
num1 = gets.chomp.split("").reverse()

puts "Enter second number:"
num2 = gets.chomp.split("").reverse()

def solution (num1, num2)
  a = num1.length
  b = num2.length
  if (a > b)
    counter = a
  else 
    counter = b
  end
  total = []
  x = 0
  carry = 0
  while x < counter do
    c = num1[x]
    d = num2[x]
    c = 0 if c === nil 
    d = 0 if d === nil
    addition = Integer(c) + Integer(d) + carry
    if (addition > 10 && x != (counter - 1))
      carry = 0
      addition = addition % 10
      carry = 1
    else carry = 0
    end
    total.push(addition)
    x += 1
  end
  new_total = total.reverse.join()
end
  

p "The sum is #{solution(num1, num2)}"