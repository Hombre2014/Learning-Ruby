students = [["Boris", 25, true],
            ["Sally", 23, true],
            ["Maria", 27, false]]
puts students
p students
# Special way of declaring array of strings
names = %w[Jack Jill John James] # Does not require "" and commas ,
puts names
p names

# Create array with new method.
p [1, 2, 3].class
p Array.new # Creates a new empty array
p Array.new(1) # Populate the array with 1 nil value
p Array.new(3)
p Array.new(10, nil)
p Array.new(10, true)
p Array.new(10, "Hello")
p Array.new(10, [1, 2, 3])
puts
# Access elements of the arrats by index
fruits = ["Apple", "Orange", "Grape", "Banana"]
p "Hellow world".length
p fruits.length
p fruits[0]
p fruits[1]
p fruits[10]
p fruits[fruits.length - 1] # Extract the last element
p fruits[-1] # Extract from the end
p fruits[-3]
p fruits[-10]
p fruits.[](-1) # [] is a method with (argument) the index.
p fruits.[](-3)
# Fetch method
puts
names = ["Tom", "Cameron", "Bob"]
p names[2]
p names[10] # Returns nil, not error!
p names.fetch(2)
# p names.fetch(10) # Gives an error, not nil!
p names.fetch(10, nil) # Second argument, returns the value what we want
p names.fetch(10, "Unknown")
p names.fetch(10, [1, 2, 3])
# Extract sequential elements from an array
puts
nums = [1, 3, 5, 7, 9, 15, 21]
p nums[2]
p nums[2, 4] # second arg says how many elements we wnt from the position in the first arg.
p nums[0, 5]
p nums[0, 1] # Returns an array with only 1 element
p nums[0] # Returns a single element, not an array!!!
p nums[0, 1].class
p nums[0].class
p nums[0, 100] # Returns the whole array if the 2nd arg is bigger then the Size of the Array
puts
# Access with ranges
n = [1, 3, 5, 7, 8, 9, 15, 21, 6, 4]
puts n[3, 4]
p n[3..4] # the ranges are the indexes!
p n[3...4]
p n[3..3] # Returns an array with only one element
p n[3..8]
p n[3...8] # Excludes the index number 8!
puts
# Access with the values at method
channels = ["CBS", "FOX", "NBS", "ESPN", "UPN"]
p channels.values_at(3) # 3 is the index!
p channels.values_at(1, 2)
p channels.values_at(0..3)
p channels.values_at(0...3)
p channels.values_at(3, 0 , 2)
p channels.values_at(3, -1)
p channels.values_at(3, -2)
p channels.values_at(2, 2, 4)
p channels.values_at(6)
