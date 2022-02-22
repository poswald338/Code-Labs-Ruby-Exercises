users = [
  {
      name: "John Doe",
      age: 43
  },
  {
      name: "Amy Singer",
      age: 53
  },
  {
      name: "Jimmy Lendricks",
      nage: 23
  }
]

# puts users[0][:name]

x = 0
while x < users.length
  if users[x][:name].start_with?('Jimmy')
    puts "My name and age is confidential"
    x += 1
  else
    puts "My name is #{users[x][:name]} and my age is #{users[x][:age]}"
    x += 1
  end
end