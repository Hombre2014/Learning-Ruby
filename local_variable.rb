def introduce_myself
  expression = "I am genius"
  puts expression
end

introduce_myself
# puts expression # Error expression is local variable!
puts
expression = "I am handsome"
puts expression
