# p [1, 3, 5, 7, 2].any? do |number|
#   number.even?
# end
#
# p [1, 3, 5, 7, 9].any? { |n| n.even? }
#
# p [1, 3, 5, 7, 2].all? { |number| number.even? }
# p [1, 3, 5, 7, 9].all? { |number| number.odd? }

def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    hash.any? {|key, value| key.is_a? Integer}
end

# p func_any({'1' => 'one', '2' => 'two', 'c' => 'Ci'})

def func_all(hash)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
    hash.all? {|key, value| value.is_a? Integer and value < 10}
end

# p func_all({'one' => 1, 'two' => 2, 'three' => 3})

def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    hash.none? {|key, value| value.nil?}
end


# p func_none({'one' => 1, 'two' => 2, 'three' => 3, 'four' => nil})

def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
  hash.find do |key, value|
    (key.is_a? Integer and value.is_a? Integer and value < 20) or
    (key.is_a? String and value.is_a? String and value.start_with?('a'))
  end
end

# p func_find({'first' => 'babc', 'second' => 'bcd', '2' => 2, 3 => 16})

marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60, '':50}

def group_by_marks(marks, pass_marks)
  # your code here
  marks.group_by do |name, grade|
    grade >= pass_marks ? 'Passed' : 'Failed'
  end
end

# p group_by_marks(marks, 30)

s = [0, 3]
# p s

def take(arr, n=1)
    arr.shift(n)
end

# p take([1,2,3], 2)

def full_name(name, *other_names)
    other_names.reduce(name) { |o, x| o + ' ' + x }
end

# p full_name('Joe', 'Harvey', 'Dow')

# def convert_temp(temp, input_scale:, output_scale: 'celsius')
#     case input_scale
#         when 'celsius'
#         case output_scale
#             when 'celsius'
#             p temp
#             when 'fahrenheit'
#             p (temp * 9/5) + 32
#             when 'kelvin'
#             p temp + 273.15
#         end
#         when 'fahrenheit'
#         case output_scale
#             when 'celsius'
#             p (temp - 32) * 5/9
#             when 'fahrenheit'
#             p temp
#             when 'kelvin'
#             p (temp - 32) * 5/9 + 273.15
#         end
#         when 'kelvin'
#         case output_scale
#             when 'celsius'
#             p temp - 273.15
#             when 'fahrenheit'
#             p (temp - 273.15) * 9/5 + 32
#             when 'kelvin'
#             p temp
#         end
#     end
# end

def convert_temp(temp, **options)
    if options[:input_scale] == options[:output_scale]
        return temp
    end

    kelvin_to_celsius = ->(temp) { return (temp - 273.15) }
    fahrenheit_to_celsius = ->(temp) { return ((temp - 32) / 1.8) }
    celsius_to_kelvin = ->(temp) {return (temp + 273.15) }
    celsius_to_fahrenheit = ->(temp) { return ((temp * 1.8) + 32) }

    converted_temp = temp

    case options[:input_scale]
    when "kelvin"
        converted_temp = kelvin_to_celsius.(converted_temp )
    when "fahrenheit"
        converted_temp = fahrenheit_to_celsius.(converted_temp )
    end

    case options[:output_scale]
    when "kelvin"
        converted_temp = celsius_to_kelvin.(converted_temp)
    when "fahrenheit"
        converted_temp = celsius_to_fahrenheit.(converted_temp)
    end

    return converted_temp
end

# convert_temp(32, input_scale: "fahrenheit", output_scale: "kelvin")

# def factorial(a)
#   yield(a)
# end
#
# n = gets.to_i
# factorial do
#     puts factorial(n)  { n * factorial(n - 1)}
# end

def call_block
    puts "Start of method."
    yield
    puts "End of method."
end
call_block do
    puts "I am inside call_block method."
end
