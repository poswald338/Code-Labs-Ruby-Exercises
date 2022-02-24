class Person
  attr_accessor :name, :age
  @@people = []
  @name
  @age

  def initialize(name, age)
    @name = name
    @age = age
    @@people.push(self)
  end

  def self.print_all_people
    @@people.each do |person|
      puts "My name is #{person.name} and my age ios #{person.age}"
    end
  end
end

Person.new("Bob", 30)
Person.new("Tom", 40)
Person.new("Ray", 50)

Person.print_all_people