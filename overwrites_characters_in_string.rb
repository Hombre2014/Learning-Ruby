thing = "rocket ship"

p thing
p thing[0]
thing[0] = "p"
p thing
thing[1] = "a"
p thing
thing[9] = "o"
p thing
puts
fact = "I love blueberry pie"
p fact
p fact[7, 4]
fact[7, 4] = "rasp"
p fact

fact [7..10] = "blue"
p fact
puts
fact[2..5] = "absolutely adore" # The number extracted may not be the characters inserted!
p fact
