def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mul(a, b)
  a * b
end

def calc(a, b, operation = "add")
  if operation == "add"
    "The result of adding is #{add(a, b)}"
  elsif operation == "sub"
    sub(a, b)
  elsif operation == "mul"
    mul(a, b)
  else
    "That is not valid"
  end
end

p calc(3, 2, "add")
p calc(3, 2)
p calc(3, 2, "sub")
p calc(3, 2, "mul")
