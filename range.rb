nums = 1..5 # Hold the numbers from 1 to 5 including
p nums
puts nums
print nums
puts
p nums.class
numbers = 1...5 # Excludes the last number 5
puts
p nums.first
p nums.last
puts
p numbers.first
p numbers.last # It returs 5, although it is not in the range

nums = 90..150
p nums.last
p nums.last(1)

nums = 90...150
p nums.last
p nums.last(1) # It DOES NOT returs 150, but the last 149!

# puts 1..10.first(3) # Can't use it without the assignment or parentesis!
puts (1..10).first(3)

alphabet = "a".."z"
p alphabet.first(5) # it is an array!
puts alphabet.first(5)

cap_alphabet = "A".."Z"
p cap_alphabet.first(26)

all_alphabet = "A".."z"
p all_alphabet.first(52) # There are other characters after Z and a!

# Size methods on range. Works only on numeric ranges

numbers = 143..769
p numbers.size
numbers = 143...769
p numbers.size

# If a value exists?
half_alphabet = 'a'.."m"
puts half_alphabet.include?("j")
puts half_alphabet.include?("s")
puts half_alphabet.include?("B")
puts half_alphabet.include?("m")
numbers = -14..79
puts numbers.include?(0)
puts numbers.include?(79)
puts numbers.include?(80)
# === is the same as include method
p numbers === 80
p numbers === 79
p numbers === -7
