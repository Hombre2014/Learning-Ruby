# p //.class
phrase = "The Ruby Programming Language is amazing and awe-inspiring."

# p phrase =~ /T/ # Returns the index of the first occurance if the expression
#
# p phrase =~ /R/
# p phrase =~ /m/
# p /m/ =~ phrase
# # . in Regex has a special meaning - any character!
# p phrase =~ /./ # 0
# p phrase =~ /x/ # nil if does not exists
# p phrase =~ /Ru/ # 4
# p phrase =~ /ing/ # 17

# Scan method - finds all matched of the expression and returns an array

voice = "I can be reached at 555-123-4567 or regexman@gmail.com"
# p voice.scan(/a/) # Returns an array with 5 elements of 'a'
# p voice.scan(/re/)
#
# # Find all occurencies of 'r' or 'e'
# puts
# p voice.scan(/[re]/)
# p voice.scan(/[er]/) # Capital case sensetive!
#
# p voice.scan(/d/) # Returns leter 'd'
# p voice.scan(/\d/) # Returns  any digit digits \d
# p voice.scan(/\d+/) # Returns all one or more consecutive digits \d+
# voice.scan(/\d+/) { |digits_match| puts digits_match.length } # scan method could accept a block

# Wild card

# puts phrase =~ /./ # the first (any) character
# puts phrase.scan(/./) # every single character

# puts phrase.scan(/.am/)
# puts phrase.scan(/.ing/)
# puts phrase.scan(/a.e/)

# Backslash
paragraph = "This is my essay. I deserve an A. I rank it a 5 out of 5."

# puts paragraph.scan(/./) # Returns all the characters
# p paragraph.scan(/\./) # \ specify the symbol '.'
# puts paragraph.scan(/d/)
# p paragraph.scan(/\d/)
# p paragraph.scan(/\D/) # Everything that is not a digit \D
# p paragraph.scan(/\s/) # \s any occurencies of a blank space ' '
# p paragraph.scan(/\s+/)
# p paragraph.scan(/\S/) # Any non blank space characters

# Anchors

poem = "99 bottles of beer of the wall, 99 bottle of beer."
# p poem.scan(/\d/)
# p poem.scan(/\d+/)
# p poem.scan(/\A\d+/) # \A Look only at the start of the string!
# p poem.scan(/eer.\z/) # Search at the end of the string

# Exclude characters

sales = "I bought 9 apples, 25 bananas, and 4 oranges at the store."
# puts sales.scan(/[^aeiou]/) # Excludes all the vowels aeiou
# puts sales.scan(/[^aeiouAEIOU]/) # Excludes the Capital vowels as well
# puts sales.scan(/[^aeiouAEIOU,]/) # Excludes commas
# puts sales.scan(/[^aeiouAEIOU,\s\d\.]/) # Only consonanse letter without space, commas, digits and vowels
# puts sales.scan(/[^aeiouAEIOU,\s\d\.]/).length

# .sub and .gsub methods

# puts "whimper".sub("m", "s") # Replaces 'm' with 's'
#
# puts "an apple".gsub('a', '-') # Replaces all occurencies of the first string with the second
# puts "(555)-555 1234".gsub(" ", "").gsub("(", "").gsub(")", "").gsub("-", "") # Very complex
# puts
puts "(555)-555 1234".gsub(/[-\s\(\)]/, "") # Shorter method
