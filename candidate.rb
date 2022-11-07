# class Candidate
#   attr_accessor :name, :age, :occupation, :hobby, :birthplace
#   def initialize(name, age, occupation, hobby, birthplace)
#     @name = name
#     @age = age
#     @occupation = occupation
#     @hobby = hobby
#     @birthplace = birthplace
#   end
# end

# senator = Candidate.new("Mr. Smith", 53, "Banker", "Fishing", "Kentucky")
# p senator.name
# p senator.occupation
# p senator.age
# # If we change the order of the arguments, we will have a wrong outputs:
# puts
# senator = Candidate.new("Kentucky", "Banker", 53, "Fishing", "Mr. Smith")
# p senator.name
# p senator.occupation
# p senator.age

# When you pass a hash for parameters will avoid this.

# class Candidate
#   attr_accessor :name, :age, :occupation, :hobby, :birthplace
#   def initialize(name, details)
#     @name = name
#     @age = details[:age]
#     @occupation = details[:occupation]
#     @hobby = details[:hobby]
#     @birthplace = details[:birthplace]
#   end
# end

# info = {age: 53, occupation: "Banker", hobby: "Fishing", birthplace: "Kentucky"}
#
# senator = Candidate.new("Mr. Smith", info)
# p senator.name
# p senator.occupation
# p senator.age
# # If we change the order of the arguments, no problems:
# puts
# info1 = {hobby: "Fishing", birthplace: "Kentucky", age: 53, occupation: "Banker"}
# senator = Candidate.new("Mr. Smith", info1)
# p senator.name
# p senator.occupation
# p senator.age

# Default values

# class Candidate
#   attr_accessor :name, :age, :occupation, :hobby, :birthplace
#   def initialize(name, details = {}) # To avoind an error if no info is given
#     @name = name
#     @age = details[:age]
#     @occupation = details[:occupation]
#     @hobby = details[:hobby]
#     @birthplace = details[:birthplace]
#   end
# end

# president = Candidate.new("Mr. Obama")
# p president.age # No error, just nil
# p president.occupation # No error, just nil
# major = Candidate.new("Mr. Born", hobby: "Skating", age: 45) # We can omit the {} in the hash, when is the last argument
# p major.hobby # Will overwrite the default value
# p major.occupation # No error, just nil

class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  def initialize(name, details = {}) # To avoind an error if no info is given
    defaults = {age: 35, occupation: "Candidate", hobby: "Running", birthplace: "USA"}
    defaults.merge!(details)

    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

major = Candidate.new("Mr. Born", hobby: "Skating", occupation: "Clerk")
p major.hobby
p major.occupation
p major.age # Default value
p major.birthplace # Default value
senator = Candidate.new("Mr. Born", hoby: "Skating", occupation: "Clerk") # misspelled hobby (hoby)
puts
p senator.hobby # Will use the default value for hobby
p senator.occupation
p senator.age
p senator.birthplace
