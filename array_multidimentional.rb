users = [["Bob", 25, "Male"], ["Susan", 38, "Female"], ["John", 35, "Male"]]
p users[0]
p users[1]
p users[1][2]
# Unpacking a multidimentional areay
bob, susam, john = users
p bob
p john
# Partition method
puts
foods = ["Steak", "Vegi", "Steak burger", "Kale", "Tofu", "Tuna Steaks"]
good = foods.select { |food| food.include?("Steak") }
bad = foods.reject { |food| food.include?("Steak") }
p good
p bad
p foods.partition { |food| food.include?("Steak") }
good2, bad2 = foods.partition { |food| food.include?("Steak") }
p good2
p bad2
puts
# Split string method, retunrs array
sentence = "Hi, my name is Boris. There are spaces here."
p sentence.split # By default the delimiter is "space"
puts
# Iterate over string characters
"Hello world".each_char { |char| puts char } # For strings!
name = "Boris"
p name.split("")
p name.chars # The same result as above
letters = name.chars
letters.each { |l| puts "#{l} is awesome" }
puts
# Join method on the arrays
names = ["Joe", "Moe", "Bob"]
p names.join # retunrs string!
p names.join("-")
def custom_join(array, delimeter = "")
  str = ""
  last_index = array.length - 1
  array.each_with_index do |elem, index|
    str << elem
    str << delimeter unless index == last_index
  end
  str
end
puts "Here is the custome method"
p custom_join(names)
p custom_join(names, "-")
p custom_join(names, "!--!")
puts
# Count method
puts "Hello world".count("H")
puts "Hello world".count("l")
puts "Hello world".count("lo") # Either letter l or letter o
puts "Hello World".count("lW")
puts
def custom_count(string, search_characters)
  count = 0
  string.each_char { |char| count += 1 if search_characters.include?(char) }
  count
end
puts "An amazing aardvark appeared".count("Aa")
puts custom_count("An amazing aardvark appeared", "Aa")
puts
fact = "I am very handsome."
p fact.index("h") # Works on strings
p fact.index("am")
p fact.index("e") # Returns very first position of the element
p fact.index("e", 7) # Second argument is position from where to start
p fact.index("z") # Returns nil if not found
p fact.rindex("e") # It starts from the end of the string
def custome_index(string, substring)
  return nil unless string.include?(substring)
  length = substring.length
  string.chars.each_with_index do |char, index|
    sequence = string[index, length]
    return index if sequence == substring
  end
end
p custome_index(fact, "am")
puts
# Insert method on a strings
typo = "GeorgWashington"
typo.insert(5, "e ")
p typo
puts
# Squeeze Method on a strings
sentence = "Thhe aardvark jummped   ovver the fence!"
puts sentence.squeeze
puts sentence.squeeze("a")
puts "Custom string method"
def custom_squeeze(string)
  final = ""
  chars = string.split("")
  chars.each_with_index { |char, index| char == chars[index + 1] ? next : final << char }
  final
end
p custom_squeeze(sentence)
puts
# Clear method on strings
p "Blah blah blah".clear #Clear the content of the string. Change the original string!
puts
# Delete method on strings
puts "Hello World".delete("l") # Removes all "l"
puts "Hello World".delete("ldr") # Removes all of the charaters without order
def custom_delete(string, delete_characters)
  new_string = ""
  string.each_char do |char|
    unless delete_characters.include?(char)
      new_string << char
    end
  end
  new_string
end
puts "Custom_delete method"
p custom_delete("Hello world", "l")
