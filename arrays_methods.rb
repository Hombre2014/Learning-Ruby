numbers = [0, 2, 4, 8, 10, 12, 14]
p numbers.slice(0)
p numbers
p numbers.slice(30)
p numbers.slice(2, 3)
p numbers.slice(2..3)
p numbers.slice(2...6)
p numbers.slice(2..6)
# slice is the same as [] methods
puts
p numbers.slice(2...6)
p numbers[2...6]
p numbers.slice(2, 3)
p numbers[2, 3]
puts
# Overwrite arrays elements
fruits = ["Apple", "Orange", "Grape", "Banana"]
puts fruits[1]
fruits[1] = "Watermelon"
puts fruits[1]
p fruits[4]
fruits[4] = "Rasberry"
p fruits
fruits[5] = "Strawberry"
p fruits
fruits[10] = "Kiwi" # Populates non existing index positions with nil!
p fruits
fruits[3, 2] = ["Canteloupe", "Pear"]
p fruits
fruits[0..2] = ["Blackberry", "Lemon", "Pineapple"]
p fruits
fruits[0..2] = ["Plum"]
p fruits
# Size and length of an array
puts
p [1, nil, 2, 3, nil, 4, "Hello", 31.4, true].length
p [1, nil, 2, 3, nil, 4, "Hello", 31.4, true].size
# Exactly the same results
p [1, 2, 3, 4, 2, 3, 2].count
p [1, 2, 3, 4, 2, 3, 2, nil, nil].count
p [1, 2, 3, 4, 2, 3, 2, nil, nil].count(2) # Count how many times element 2 is in the arrat?
p [1, 2, 3, 4, 2, 3, 2, nil, nil].count(nil)
puts
# Empty and nil method.
puts [1, 2, 3].empty?
puts [].empty?
puts [].length
puts [false, false].empty?
puts [nil, nil, nil].empty?
puts [nil, nil, nil].nil?
puts 1.nil?
puts [].nil?
puts
letters = ("a".."j").to_a # convert it to an array
print letters
p letters
p character = letters[25]
p character
p character.nil? # Only returns true if the element is nil!
# The first and last methods
puts
arr = [1, 3, 5, 7, 9, 15, 21, 8, 6]
p arr.first
p arr.last
puts
p arr.first(3)
p arr.last(2) # Returns an array
p arr.first
p arr.first(1) # Returns an array
p arr.last
p arr.last(1) # Returns an array

def custom_first(arr, num = 0)
  return arr.first if num.zero?
  arr[0, num]
end
puts
p custom_first(arr)
p custom_first(arr, 5)
p custom_first(arr, 1)
def custom_last(arr, num = 0)
  return arr[-1] if num == 0
  arr[-num..-1]
end
puts
p custom_last(arr)
p custom_last(arr, 5)
p custom_last(arr, 1)
p arr
puts
# push and shovel methods
locations = ["House", "Airport", "Bar"]
p locations
locations.push("Restaurant")
p locations
locations.push("Sallon", "Office")
p locations
locations << "Pharmacy"
p locations
locations << "Coffe shop" << "Mall"
p locations
# Insert method
locations = ["House", "Airport", "Bar"]
p locations
locations.insert(1, "Restaurant") # starting index of the new element, after House
p locations
puts
# Pop method
ar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p ar
ar.pop
p ar
ar.pop
p ar
p last_item = ar.pop
p ar
p last_2items = ar.pop(2) # Returns an array, because there are two elements
p ar
p last_2items = ar.pop(1) # It is still an array, eventhough just one element
puts
p "shift and unshift methods"
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p a
p a.shift
p a
p a.shift(1)
p a
p a.shift(3)
p a
a.unshift(25)
p a
a.unshift(100)
p a
a.unshift(500, 300, 400)
p a
