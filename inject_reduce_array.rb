# # p [10, 20, 30, 40].sum
#
# result = [10, 20, 30, 40].reduce(0) do |previous, current| # sum of the elements with starting value of 0
#   puts "The previous value is #{previous}"
#   puts "The current value is #{current}"
#   previous + current
# end
#
# puts result
#
# result = [10, 20, 30, 40].inject(0) do |previous, current| # sum of the elements with starting value of 0
#   puts "The previous value is #{previous}"
#   puts "The current value is #{current}"
#   previous + current
# end
#
# puts result
#
# res = [3, 4, 5, 6, 7].reduce(1) do |previous, current|
#   puts "The previous value is #{previous}"
#   puts "The current value is #{current}"
#   previous * current
# end
#
# puts res


def sum_terms(n)
  # your code here
    (0..n).inject(0) { |previous, current| previous + current * current + 1 }
end

# p sum_terms(6)

# p (0..5).inject(1) {|product, n| product * n + 1 }

# def square_of_sum (my_array, proc_square, proc_sum)
#     sum = proc_sum.call(my_array)
#     proc_square.call(sum)
# end
#
# proc_square_number = proc { |n| n * n }
# my_array = gets.split().map(&:to_i)
# proc_sum_array     = proc { my_array.reduce(0) { |previous, current| previous + current } }

# puts square_of_sum(my_array, proc_square_number, proc_sum_array)

multiply_function = -> (number) do
   -> (another_number) do
       number * another_number
   end
end

doubler = multiply_function.(2)
tripler = multiply_function.(3)

# puts doubler.(4)
# puts tripler.(4)

# p (1..6).inject(:*)

power_function = -> (x, z) {
    (x) ** z
}

base = 2
raise_to_power = power_function.curry.(base)

power = 4
# puts raise_to_power.(power)
