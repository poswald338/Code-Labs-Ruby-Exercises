# puts "hello"
# class Course
#   @@things = []
#   def self.things
#     @@things
#   end
#   def things
#     @@things
#   end
# end

# class Teacher < Course
# end

# class Student < Teacher
# end

# Course.things << :age
# Teacher.things << :blah
# Student.things << :blahblah

# p Course.things
# p Student.things
# p Teacher.things


class Salad
  def self.buy_olive_oil
    'hi'
  end
end
puts Salad.buy_olive_oil