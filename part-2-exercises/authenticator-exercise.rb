USERS = [
  {username: "Patrick", password: 'password'},
  {username: "John", password: 'password1'},
  {username: "Tony", password: 'password2'},
  {username: "Rick", password: 'password3'},
  {username: "Aaron", password: 'password4'}
]

puts "Welcome to the Authenticator"
25.times { print '-' }
puts
puts 'This program will take input from the User and compare password.'
puts 'If correct, the application will return the user object.'

def authenticate_user(un, pw)
  USERS.each do |user|
    if user[:username] === un && user[:password] === pw
      return user
    elsif user[:username] === un && user[:password] != pw
      return 'Invalid password'
    end
  end
  return 'Credentials were not correct'
end

attempt = 3
while attempt > 0 do
  print 'Username: '
  username = gets.chomp
  print 'Password: '
  pw = gets.chomp
  puts authenticate_user(username, pw)
  puts 'Press n to quit or any other key to continue'
  userInput =  gets.chomp.downcase
  break if userInput == 'n'
  attempt -= 1
  puts "Attepmts left: #{attempt}"
end
puts 'You have exceeded the maximum number of attempts.' if attempt === 0
