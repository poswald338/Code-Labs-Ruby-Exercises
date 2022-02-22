user = {email: 'test@test.com', id: '1'}

puts user[:email]
puts user[:id]

# print user.methods

puts user.empty?
puts user.has_key?(:email)
puts user.delete(:email)