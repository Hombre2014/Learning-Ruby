5.times { puts "Boris is awesome!" } # Content in {} is a block!

3.times do
  puts "Boris is incredible!"
  puts "I'm having so much fun learnign Ruby!"
end

3.times do |count| # Adding a variable to the block
  puts "We are currently on loop number #{count + 1}"
  puts "Boris is incredible!"
  puts "I'm having so much fun learnign Ruby!"
end

# puts count # count does not exist outside of the block.

5.times { |number| puts "We are on number #{number}" } # block with variable on line line and curly braces

# Use the times method to output the first ten multiples of 3 (3, 6, 9, 12, ... 30)

10.times { |count| puts "3 times #{count.next} is equal to #{count.next * 3}" }
