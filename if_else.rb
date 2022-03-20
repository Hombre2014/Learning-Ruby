grade = "C"

if grade == "A"
  puts "That's an excellent frade."
elsif grade == "B"
  puts "That's a good grade"
else
  puts "Unacceptible"
end

def odd_or_even(number)
  if number.odd?
    puts "The number is odd"
  else
    puts "The number is even"
  end
end

p odd_or_even(5)
