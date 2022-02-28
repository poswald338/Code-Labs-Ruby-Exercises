class Animal
  attr_accessor :name, :animal_type, :color 

  @name
  @animal_type
  @color

  def to_s
    puts "My name is #{@name}"
    puts "I am a #{@animal_type}"
    puts "My fur color is #{@color}"
  end

  def self.intro(name, type, color)
    "Hello. My name is #{name}, I am a #{type}, and my fur is #{color}"
  end
end

dog = Animal.new
dog.name = "Clifford"
dog.animal_type = "dog"
dog.color = "red"

puts dog

# puts "My name is #{dog.name}"
# puts "I am a #{dog.animal_type}"
# puts "My fur color is #{dog.color}"

puts Animal.intro(dog.name, dog.animal_type, dog.color)