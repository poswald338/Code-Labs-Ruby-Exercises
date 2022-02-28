class Rectangle
  attr_accessor :length, :width
  @length = 10
  @width = 5

  def self.area
    @length * @width
  end
end

a = Rectangle.new
puts "Length of Rectangle?"
a.length = gets.chomp.to_i
puts "Width of rectangle?"
a.width = gets.chomp.to_i

puts a.area
# puts Rectangle.area


