5.downto(1) { |number| puts "Countdown: #{number}" }

5.downto(0) do |i|
  puts "We are currently on #{i}"
  puts "Hooray"
end

puts "LIFTOFF!"

1.upto(10) { |n| puts "Start from #{n}" }
