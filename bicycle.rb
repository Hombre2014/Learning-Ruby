class Bicycle
  @@maker = "BikeTech"
  @@count = 0

  def self.description # This is a class method prepended with self!
    "Hi there, I'm the blueprint for Bicycles! Use me to create Bicycle object." # It is equivalent to Bicycle.description
  end

  def self.count
    @@count
  end

  def maker # Instance method that has an access to the class variable @@maker
    @@maker
  end

  def initialize
    @@count += 1
  end
end

puts Bicycle.description
p Bicycle.count
a = Bicycle.new
b = Bicycle.new
c = Bicycle.new
p Bicycle.count
# p a.maker
d = Bicycle.new
p Bicycle.count
