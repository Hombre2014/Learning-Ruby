def add_two_numbers(num1, num2)
  puts "OK, I'm solving your math problem!"
  return num1 + num2
end

result = add_two_numbers(3, 5)
p result
puts
p add_two_numbers(12, 23)

# if there is no explicit return statement, Ruby returns the last expression!
# def add_two_numbers(num1, num2)
#   puts "OK, I'm solving your math problem!"
#   num1 + num2
# end

# Second part
puts
def nothing

end
p nothing # Returns nil
def return_string
  "What will be the return value here?"
end

def return_guess
  puts "Blah blah"
end
puts
p return_string
p return_guess # Returns nil
