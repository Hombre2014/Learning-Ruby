y = nil
p y

y ||=5 # Assign the value if and only if the y is nil!
p y

y ||=10
p y

greeting = "Hello"
extraction = 10
letter = greeting[extraction]
p letter
letter ||= "Not found"
p letter
