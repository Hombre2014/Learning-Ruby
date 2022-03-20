num = 1000

p num.next
p num.respond_to?("next")
p num.respond_to?("class")
p num.respond_to?("odd")
p num.respond_to?("even")

puts "Hello".respond_to?("length")
# it is the same as:
puts "Hello".respond_to?(:length)

puts 1 < 2 ? "Yes, it is" : "No, it's not"
