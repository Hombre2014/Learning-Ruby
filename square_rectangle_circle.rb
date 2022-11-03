module Square
  def self.area(side)
    side * side
  end
end

module Rectangle
  def self.area(length, width)
    length * width
  end
end

module Circle
  PI = 3.14159
  def self.area(radius)
    PI * radius * radius
  end
end

puts Square.area(4)
puts Rectangle.area(4, 3)
puts Circle.area(4)
