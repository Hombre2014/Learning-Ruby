i = 1

while i < 10
  puts i
  i += 1
end
puts
p i

i = 1
puts
until i > 9
  puts i
  i += 1
end

# status = true
#
# while  status
#   print "Please enter username: "
#   username = gets.chomp.downcase
#   print "Please enter password: "
#   password = gets.chomp.downcase
#   if username == "yuriy" && password == "bestpass"
#     puts "Entry granted"
#     status = false
#   elsif username == "quit" || password == "quit"
#     puts "Goodbuy"
#     status = false
#   else
#     puts "Incorrect combination, try again, or enter 'quit' to leave."
#   end
# end
