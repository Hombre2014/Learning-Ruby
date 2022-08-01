a = [1, 2, 3]
b = [1, 2, 3]

p a.object_id
p b.object_id

c = [4, 5, 6]
d = c

p c.object_id == d.object_id
c.push(7)
p c
p d

d = c.dup # Duplicate method
p c.object_id
p d.object_id
c.push(8)
p c
p d
puts
# Splat arguments
def sum(*numbers) # Unknown number of arguments
  sum = 0
  numbers.each { |num| sum += num }
  sum
end
p sum(1, 2)
p sum(1, 2, 3, 4)
puts
# Any and all methods
p [1, 3, 5, 7, 2].any? do |number|
  number.even?
end
puts
p [1, 3, 5, 7].all? { |n| n.odd? }
p [1, 3, 5, 7, 8].all? { |n| n.odd? }

def custom_join(array, delimiter = "")
  string = ""
  last_index = array.length - 1
  array.each_with_index do |elem, index|
    string << elem
    string << delimiter unless index == last_index
  end
  string
end

names = ["Joe", "Moe", "Bob"]
p custom_join(names)
p custom_join(names, "&----&")

fact = "Hello"
p fact.chars
