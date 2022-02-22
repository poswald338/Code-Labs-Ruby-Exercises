# print 'What is your name?'
# name = gets.chomp
# if name.downcase === 'john'
#   puts "I Found You!"
# else 
#   puts "You're not who I'm looking for"
# end

print 'What is your first name?'
fn = gets.chomp
print 'What is your last name?'
ln = gets.chomp
if fn.downcase === 'john' && ln.downcase === 'doe'
  puts "I Found You!"
elsif (fn.downcase + ' ' + ln.downcase) === 'amy jean'
  puts 'Amy! Help me look for John Doe.'
else 
  puts "You're not who I'm looking for"
end

