class Person

  def initialize
    Traits.eat
  end
end

module Traits
  def self.eat
    puts "eating"
  end
end

p = Person.new