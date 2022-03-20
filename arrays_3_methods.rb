a = [1, 2, 3]
b = [1, 2, 3, 4]
c = [3, 2, 1]
d = [1, 2, 3]

p a == b
p a == c
p a == d

a1 = ["skit", "star", "snik"]
b1 = ["skit", "star", "Snik"]
puts
p a == b # false, because of S capital vs small letter
# Spaceship operator <=>
puts
p 5 <=> 5 # Returns 0 if both values are the same
p 5 <=> 6 # Returns -1 if left value is smaller than the right value
p 5 <=> 3 # Returns 1 if left value is grater than the right value
p 5 <=> [1, 2, 3] # Returns nil
p [3, 4, 5] <=> [3, 4, 5] # Returns 0
p [3, 4, 5] <=> [nil, 4, 5] # Returns nil Can't compare them
p [3, 4, 5] <=> [3, 4, 6] # Returns -1. Third element 5 < 6
p [3, 4, 5] <=> [3, 4, 1] # Returns 1.
# Convert range to Array
letters = "A".."T"
p letters
p letters_arr = letters.to_a
p letters_arr[4]
number_range = 415..450
p number_range
p number_range.to_a
number_arr = number_range.to_a
p number_arr[1]
# is_a? method
puts
p 1.class
p 3.14.class
p true.class
p false.class
p nil.class
p "Hello".class
p [1, 2].class
puts
puts 1.is_a?(Integer) # Integer is the parrent of Fixnum class
puts ["a", "b"].is_a?(Array)
puts ["a", "b"].is_a?(String)
# BasicObject Class on the top of all Classes!
# Object is next one
puts
p 1.is_a?(Fixnum)
p 1.is_a?(Integer)
p 1.is_a?(Object)
p 1.is_a?(BasicObject)
# All 4 above are true!
puts
3.times { puts "Hello there" }
3.times { |number| puts "Hello there, going #{number}" }
5.times do |number|
  square = number * number
  puts "Current number #{number} and square is #{square}"
end
# number and square are visible only in blocks!
puts
# Each method.
candies = ["Milky way", "Mars", "Indianka"]
candies.each do |candy|
  puts "I love eating #{candy}"
  puts "It tastes so good."
end
puts
names = ["bo", "moe", "joe"]
names.each { |name| puts name.capitalize }
[1, 2, 3, 4, 5].each do |num|
  square = num * num
  puts "square of #{num} is #{square}!"
end
