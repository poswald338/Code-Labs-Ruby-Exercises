class Person
  attr_accessor :weight, :height, :name
  @weight
  @height
  @name

  def initialize(weight, height, name)
    @weight = weight
    @height = height
    @name = name
  end

  def eat(food)
    puts "Eating #{food}"
  end
end

class Doctor < Person
  def initialize(weight, height, name)
    super
    puts "I am a #{self.class}!"
  end
end

class Teacher < Person
  def initialize(weight, height, name)
    super
    puts "I am a #{self.class}!"
  end
end

class Engineer < Person
  def initialize(weight, height, name)
    super
    puts "I am a #{self.class}!"
  end
end

d = Doctor.new(120, "12'0", "Steven")
d.eat("pizza")

t = Teacher.new(150, "5'4", "Stacy")
p t

e = Engineer.new(185, "6'0", "David")
puts e.name, e.weight