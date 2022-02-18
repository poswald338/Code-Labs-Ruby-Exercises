sentence = "Hello, John Doe"
sentence.sub!('Hello', 'Hi')
puts sentence

solution = "Hi, John Doe"
puts solution.match?(sentence)