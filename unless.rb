password = "Whiskers"

# if password != "Whiskers"
#   puts "Not allowed"
# else
#   puts "Welcome"
# end

# The above one is not so intuitive Use unless

unless password == "Whiskers"
  puts "Not allowed"
else
  puts "Welcome"
end

unless password.include?("a") # Execute if it is false! similar to if !=
  puts "It does not include the letter A"
end
