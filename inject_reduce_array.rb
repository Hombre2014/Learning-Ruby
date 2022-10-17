# p [10, 20, 30, 40].sum

result = [10, 20, 30, 40].reduce(0) do |previous, current| # sum of the elements with starting value of 0
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current
end

puts result

result = [10, 20, 30, 40].inject(0) do |previous, current| # sum of the elements with starting value of 0
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current
end

puts result

res = [3, 4, 5, 6, 7].reduce(1) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous * current
end

puts res
