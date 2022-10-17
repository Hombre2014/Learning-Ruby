words = ['dictionary', 'refrigerator', 'platypus', 'microwave']

# p words.select { |word| word.length > 8 } # find all the elements
p words.find { |word| word.length > 8 } # find the first element
p words.detect { |word| word.length > 8 } # find the first element

lottery = [4, 8, 15, 16, 23, 42]

result = lottery.find do |number|
  number.odd?
end

p result

p lottery.reverse.find { |num| num.odd? } # The same with detect!
