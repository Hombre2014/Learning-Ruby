# class Array
#   def sum_el
#     total = 0
#     self.each { |element| total += element if element.is_a?(Numeric) }
#     total
#   end
# end
#
# arr = [1, 2, 3, false, "Hello", -2.86]
# # p arr.sum_el
#
# class String
#   def alphabet_sum
#     alphabet = ("a".."z").to_a
#     sum = 0
#     self.downcase.each_char do |character|
#       if alphabet.include?(character)
#         numeric_value = alphabet.index(character) + 1
#         sum += numeric_value
#       end
#     end
#     sum
#   end
# end

# puts "abcd".alphabet_sum
# puts "Hello world!".alphabet_sum

class Hash
  def identify_duplicate_values
    values = []
    dupes = []
    self.each_value do |value|
      values.include?(value) ? dupes << value : values << value
    end
    dupes.uniq
  end
end

s = {a: 100, b: 100, c: 83, d: 50, e: 13, f: 6, g: 100, h: 13, i: 50, j: 80}

# p s.identify_duplicate_values

class Fixnum
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self * 60 * 60
  end

  def days
    self * 60 * 60 * 24
  end

  def custom_times
    i = 0
    while i < self
      yield(i + 1)
      i += 1
    end
  end
end

# puts Time.now + 60
# puts Time.now + 45.minutes
# puts Time.now + 4.hours
# puts Time.now + 2.days

# 5.times { |i| puts i }
# puts
# 5.custom_times { |i| puts i }

class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end
end

good = Book.new("War and peace", "Leo Tolstoy", 1245)
p good
puts

class Book
  def read
    1.step(@pages, 10) { |page| puts "Reading page #{page}" }
    puts "Done! #{@title} was a great book"
  end
end

animal_farm = Book.new("Animal Farm", "George Orwell", 50)
p animal_farm
p animal_farm.read
puts
p good.read
