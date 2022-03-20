first_name = "Harry "
last_name = "Potter"

p first_name + last_name

# p first_name += last_name

# p first_name.concat(last_name)
p first_name << last_name << " Wizard"
puts
p first_name.concat(last_name) # concat overwrites the first_name!

p first_name.prepend(last_name) # Also overwrites the first_name!
