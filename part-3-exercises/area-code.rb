dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.each do |k, v|
    puts k
  end
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  if somehash.include?(key)
    "The area code for #{key} is #{somehash[key]}."
  else
    "That city could not be found"
  end
end
 
# Execution flow
loop do
  puts "Would you like to look up an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != 'y'
  25.times {print '-'}
  puts
  get_city_names dial_book
  25.times {print '-'}
  puts
  puts "Which city would you like to look up?"
  city = gets.chomp.downcase.delete(' ')
  puts get_area_code dial_book, city 
  puts
end