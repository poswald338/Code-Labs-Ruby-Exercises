array = []
puts array.methods

array = ["Pat", "John", "Bob"]
puts array.sort
array.delete_if {|element| element === 'Pat'}
puts array
array.reverse!
puts array