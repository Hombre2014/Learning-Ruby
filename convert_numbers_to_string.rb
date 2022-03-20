str = "5"
p str
p str.class
p str.to_i # Convert string to Integer, Fixnum in earlier versions.
p str.to_i.class

str = "5.8"
p str
p str.to_f # Convert to float
p str.to_f.class

number = 10
p number
p number.class
p number.to_s.class # Convert number to string

p number.to_f.class # Convert an integer to float

pi = 3.14
p pi
p pi.class
p pi.to_i # It doesn't round it, it just chop it off. Converts it to Integer
p pi.to_s # Convert float to string

p "5".to_s # Can do it on te same class with no problem. String to String
