word = "hello"
p word.capitalize
p word
puts
word.capitalize! # Bang method (!) Mutate the original string
# Equivalent to:
p word = word.capitalize
p word
puts
word.upcase!
p word
puts
word.downcase!
p word
puts
word.reverse!
p word
puts
word.swapcase!
p word
