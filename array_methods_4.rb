fives = [5, 10, 15, 20, 25, 30, 35, 40]

def print_evens_and_odds(array)
  odds = []
  evens = []
  array.each { |number| number.odd? ? odds << number : evens << number }
  p odds
  p evens
end

print_evens_and_odds([5, 10, 15, 20, 25, 30, 35, 40])
puts
shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
  ties.each do |tie|
    puts "Option: A #{shirt} shirt and a #{tie} tie."
  end
end
puts
numbers = [3, 5, 7]
num = 100
for num in numbers
  puts num
end
p num # variable num still exist after the for loop!
rng = 1..10
rng.each {|rng_number| puts rng_number}
# p rng_number # The variable doesn't exist after the block code.
puts
# Each with index
colors = ["red", "blues", "green", "yellow"]
colors.each_with_index do |color, index|
  puts "Moving to the index numb #{index}"
  puts "The current color is #{color}"
end
puts
# Map and collect method exact same functionalyti
n = [1, 2, 3, 4, 5]
sq = []
n.each { |number| sq << number ** 2 }
p sq

square =  n.map { |e| e ** 2  } # The same as the above example.
# square =  n.collect { |e| e ** 2  } # The same as the above example.
p square
fahr_tem = [105, 73, 40, 18, -2]
celsius_temp = fahr_tem.map { |temp| (temp - 32) * 5.0 / 9.0  }
p celsius_temp
puts
# Sort method
arr = [5, 13, 1, -2, 8]
words = ["cat", "kangaroo", "apple", "zebra"]
p arr.sort
p arr.sort.reverse
p words.sort # Doesn't change the orginal array
puts
# Concat method
p [1, 2, 3] + [4, 5]
p [1, 2, 3].concat([4, 5])
nums = [1, 2, 3]
p nums
nums.concat([4, 5, 6])
p nums
a = [1, 2, 3]
b = [4, 5, 6]
def custom_concat(arr1, arr2)
  arr1.concat(arr2)
end
p custom_concat(a, b)
puts
# Max and min methods
stocs_prices = [723.34, 234, 56, 84.9, 734.45]
p stocs_prices.max
p stocs_prices.min
def custom_max(arr)
  return nil if arr.empty?
  max = arr[0]
  arr.each do |e|
    max = e if e > max
  end
  max
end
p custom_max(stocs_prices)
puts
# Include method
p "Hello".include?("l")
p [1, 2, 3, 4, 5].include?(3)
p [1, 2, 3, 4, 5].include?(8)
puts
# Index and find index methods. They are identicle
colors = ["red", "blue", "green", "red"]
p colors.index("green")
p colors.index("blue")
p colors.index("red") # Returns only the first ocurance of the element.
p colors.find_index("blue")
p colors.index("yellow") # Returns nil
puts
# Select methods
grades = [80, 95, 13, 76, 28, 39]
matches = grades.select do |number|
  number >= 75
end
p matches
puts
words = ["level", "selfless", "racecar", "monitor"]
palindromes = words.select { |word| word == word.reverse }
p palindromes
puts
# Reject method
animals = ["cheetah", "cat", "lion", "elephant", "dog", "cow"]
results = animals.reject { |e| e.include?("c") }
p results
