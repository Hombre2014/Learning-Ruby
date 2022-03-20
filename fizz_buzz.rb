def fizzbuzz(number)
  1.step(number, 1) do |n|
    if n % 15 == 0
      puts "#{n} - Fizzbuzz"
    elsif n % 3 == 0
      puts "#{n} - Fizz"
    elsif n % 5 == 0
      puts "#{n} - Buzz"
    end
  end
end

fizzbuzz(45)

# if the number divisible by 3, output Fizz
# if the number divisible by 5, output Buzz
# if the number divisible by BOTH 3 and 5, output Fizzbuzz

# Statement modifier
num = 5000

if num > 2500
  puts "Huge number"
end

puts "Huge number" if num > 2500
puts
x = 8
unless x > 10
  puts "x is not greater than 10"
end
puts
puts "x is not greater than 10" unless x > 10
