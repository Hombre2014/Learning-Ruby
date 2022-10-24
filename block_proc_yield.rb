# def pass_control
#   puts 'This is inside the method'
#   yield
#   puts 'Now I am back inside the method'
# end
#
# pass_control { puts 'I am very handsome and I am inside the block' }
#
#
# def who_am_i
#   adj = yield
#   puts "I am very #{adj}"
# end
#
# who_am_i { 'handsome' }

# def multiple_pass
#   puts 'This is inside the method'
#   yield
#   puts 'Now I am back inside the method'
#   yield
# end

# Proc

a = [1, 2, 3, 4, 5]
b = [6, 7, 8, 9, 10]
c = [11, 12, 13, 14, 15]

# a_cubes = a.map { |num| num ** 3 }
# b_cubes = b.map { |num| num ** 3 }
# c_cubes = c.map { |num| num ** 3 }

# p a_cubes
# p b_cubes
# p c_cubes

cubes = Proc.new { |number| number ** 3 }
squares = Proc.new { |number| number ** 2 }

# p a.map(&cubes) # & is the reference to the proc named cubes
# p b.map(&cubes)
# p c.map(&cubes)

# a_cubes, b_cubes, c_cubes = [a, b, c].map { |arr| arr.map(&cubes) }
#
# p a_cubes
# p b_cubes
# p c_cubes

currencies = [10, 20, 30, 40, 50]

to_euros = Proc.new { |c| c * 0.95 }
to_rupees = Proc.new { |c| c * 68.13 }
to_pesos = Proc.new { |c| c * 20.67 }

# p currencies.map(&to_euros)
# p currencies.map(&to_rupees)
# p currencies.map(&to_pesos)

ages = [10, 60, 83, 30, 43, 25]

is_old = Proc.new do |age|
  age > 55
end

# p ages.select(&is_old)

# block_given?

def pass_control_on_condition
  puts 'This is inside the method'
  yield if block_given?
  puts 'Now I am back inside the method'
end

# pass_control_on_condition { puts 'I am very handsome and I am inside the block' }
# pass_control_on_condition # No block is given, but no error

# Yield with argument

# def speak_the_truth
#   yield 'Yuriy' if block_given?
# end
#
# speak_the_truth { |name| puts "#{name} is good!" }

def speak_the_truth(name)
  yield name if block_given?
end

# speak_the_truth('Boris') { |name| puts "#{name} is brilliant!" }
# speak_the_truth('Yuriy') { |name| puts "#{name} is brilliant!" }
#
# speak_the_truth('Joe') { |name, age| puts "#{name} is #{age} years old" } # When more arguments are given in the block - nil for age.


# def number_evaluation(n1, n2, n3)
#   puts "Inside the method"
#   yield(n1, n2, n3)
# end

# result = number_evaluation(5, 10, 15) { |n1, n2, n3| n1 * n2 * n3 }
# p result

# custom_each method

def custom_each(array)
  i = 0
  while i < array.length
    yield array[i]
    i += 1
  end
end

names = ['Borix', 'Yuriy', 'Anna']
numbers = [10, 20, 30]

# custom_each(names) do |name|
#   puts "The lenght of #{name} is #{name.length}"
# end
#
# custom_each(numbers) do |num|
#   puts "The square of #{num} is #{num ** 2}"
# end

# Proc in metod without parameter

def greeter
  puts "I'm inside the method"
  yield
end

phrase = Proc.new do
  puts "Iside the proc"
end

# greeter(&phrase) # Calling greeter with proc parameter, althought it has no parameters in definition. Not a problem!

# p phrase.class

hi = Proc.new { puts "Hi there" }
#
# 5.times(&hi)
# puts
# hi.call

# Passing a Ruby method to as a Proc (Use &:)

# p ['1', '2', '3', 4].map { |n| n.to_i }
# p ['1', '2', '3', 4].map(&:to_i)
# p [10, 14, 25].map(&:to_s)
#
# p [1, 2, 3, 4, 5].select { |n| n.even? }
# p [1, 2, 3, 4, 5].select(&:even?)

# Methods with Proc parameters

# def talk_about(name, &myproc)
#   puts "Let me tell you about #{name}"
#   myproc.call(name)
# end
#
# good = Proc.new do |name|
#   puts "#{name} i a genius"
#   puts "#{name} is a good fellow"
# end
#
# bad = Proc.new do |name|
#   puts "#{name} is dolt!"
#   puts "I can't stand #{name}"
# end
#
# talk_about("Yuriy", &good)
# talk_about("Yuriy", &bad)
# talk_about("Boris", &bad)

# Lambdas annonimous procs

sq_proc = Proc.new { |n| n ** 2 }
sq_lambda = lambda { |n| n ** 2 }

# p [1, 2, 3].map(&sq_proc)
# p sq_proc.call(5)

# p [1, 2, 3].map(&sq_lambda)
# p sq_lambda.call(5)

some_proc = Proc.new { |name, age| "Your name is #{name} and your age is #{age}." }

# p some_proc.call("Boris", 26)
# p some_proc.call("Boris") # No error
# p some_proc.call() # No error

some_lambda = lambda { |name, age| "Your name is #{name} and your age is #{age}." }

# Lambdas do care about the number of parameters, procs does not

# p some_lambda.call("Boris", 25)
# p some_lambda.call("Boris") # Wrong number of arguments
# p some_lambda.call() # Wrong number of arguments

# def diet
#   status = lambda { return "You gave in" }
#   status.call
#   "You completed the diet"
# end
#
# result = diet
# p result
#
# def diet
#   status = Proc.new { return "You gave in" }
#   status.call
#   "You completed the diet"
# end
#
# p diet

# Lambda returns the results from the block, proc returns the results for the whole method!

# Refactoring efficient lamda

to_euros = lambda { |dollars| dollars * 0.95 }
to_pesos = lambda { |dollars| dollars * 20.67 }
to_rupees = lambda { |dollars| dollars * 68.13 }

# def convert(dollars, currency)
#   yield(dollars, currency) if dollars.is_a?(Numeric)
# end

# def convert_to_euros(dollars)
#   dollars * 0.95 if dollars.is_a?(Numeric)
# end
#
# def convert_to_pesos(dollars)
#   dollars * 20.67 if dollars.is_a?(Numeric)
# end
#
# def convert_to_rupees(dollars)
#   dollars * 68.13 if dollars.is_a?(Numeric)
# end

# p convert_to_euros(1000)
# p convert_to_pesos(1000)
# p convert_to_rupees(1000)

def convert(dollars, currency_lambda) # Does not need the & sign as proc
  currency_lambda.call(dollars) if dollars.is_a?(Numeric)
end

# p convert(1000, 'euros') { |dollars| dollars * 0.95 }
# p convert(1000, 'pesos') { |dollars| dollars * 20.67 }
# p convert(1000, 'rupees') { |dollars| dollars * 68.13 }

p convert(1000, to_euros)
p convert(1000, to_pesos)
p convert(1000, to_rupees)

# When used with another method it needs the & sign

p [100, 2000, 3000].map(&to_pesos)
