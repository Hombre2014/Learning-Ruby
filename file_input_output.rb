# File.open('novel.txt').each do |line|
#   puts line
# end

# Write to a text file

# File.open('myFirstFile.txt', 'w') do |file| # w will overwrite the content, a argument will append the content
#   file.puts "I'm creating this from Ruby!"
#   file.write "No line break here!"
#   file.puts "Pretty cool."
# end

# Rename the file

# File.rename('myFirstFile.txt', 'secondFile.txt')

# Delete file

# File.delete('secondFile.txt')

# if File.exist?('secondFile.txt')
#   File.delete('secondFile.txt')
# end

# Command line arguments

# Special consant - array ARGV collects all the command line arguments

# ARGV.each do |argument|
#   number = argument.to_i
#   puts "The square of #{number} is #{number ** 2}"
# end

# Load method - see start.rb and end.rb

# .start and .end methods

phrase = "The Ruby programming language is amazing!"

# puts phrase.start_with?("The")
# puts phrase.start_with?("Ruby")
# puts phrase.start_with?("the")
# puts phrase.downcase.start_with?("the")
#
# puts phrase.end_with?("!") # true
# puts phrase.end_with?("amazing") # false

def custom_start_with?(string, substring)
  # substring == string[0, substring.length] ? true : false
  substring == string[0, substring.length]
end

def custom_end_with?(string, substring)
  # substring == string[-substring.length..-1] ? true : false
  substring == string[-substring.length..-1]
end

# p custom_end_with?(phrase, "zing!")

# include method

# puts phrase.include?("Ruby p")
search_for = "language"

def custom_include?(string, substring)
  for c in (0..(string.length - substring.length)) do
    if substring == string[c, substring.length]
      return true
    else
      next
    end
  end
  return false
end

def custom_include_2?(string, substring)
  len = substring.length
  string.chars.each_with_index do |char, index|
    return true if string[index, len] == substring
  end
  false
end

p custom_include?(phrase, search_for)
puts "Second method"
p custom_include_2?(phrase, search_for)
