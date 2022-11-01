# Classes

puts 5.class
puts '5'.class
puts 5.55.class
puts [5].class
puts true.class
puts false.class
puts nil.class
puts Hash.new(5).class
puts (0..5).class
puts //.class
puts Proc.new {}.class
puts lambda {}.class
puts Time.new.class

# Super class

puts
puts 5.class
puts 5.class.superclass
puts 5.class.superclass.superclass
puts 5.class.superclass.superclass.superclass
puts
puts 5.class.ancestors # Comparable and Kernel are modules not Classes
puts
puts [1, 2].class
puts [1, 2].class.superclass
puts [1, 2].class.superclass.superclass

# methods method

fix_num_methods = 5.methods.sort
float_num_methods = 3.14.methods.sort
puts fix_num_methods & float_num_methods
puts
puts fix_num_methods - float_num_methods
puts arr = [1, 2, 3].methods.sort
puts hash = {key: 'value'}.methods.sort
puts
puts hash - arr
