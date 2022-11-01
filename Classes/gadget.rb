
class Gadget
  def initialize
    @username = "User #{rand(1..100)}"
    @password = 'topsecret'
    @production_number = "#{('a'..'z').to_a.sample}-#{rand(1..1000)}"
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}."
  end

  def username
    @username
  end

  def production_number
    @production_number
  end
end

# puts Gadget.superclass
# puts Gadget.superclass.superclass

# phone = Gadget.new
# laptop = Gadget.new
# microwave = Gadget.new

# puts phone
# puts laptop
# puts microwave
# puts phone.class
# puts phone.methods.sort
# puts phone.inspect
# puts phone.is_a?(Gadget)
# puts
# puts phone.respond_to?(:class)
# shiny = Gadget.new
# flashy = Gadget.new
# p shiny
# p flashy
# p shiny.object_id
# p flashy.object_id
#
# # Aliaces
#
# glossy = shiny
# p glossy.object_id
# p shiny.object_id
#
# p shiny == flashy
# p glossy == shiny

# Instance variable and initialize
# @ is called sigil
# @name = 'Boris'
# @age = 25

phone = Gadget.new
# laptop = Gadget.new
#
# puts phone.inspect
# puts laptop.inspect
# puts phone.instance_variables

# Instance methods

# p phone.info
# p laptop.info
# At this point instance variables are not accessible yet:
# p phone.@username # Error
# puts phone.methods - Object.methods
# puts phone.methods.sort
puts phone.to_s

# Overriding the to_s method

# We can rename the info method to to_s within the class. S, Ruby will look first in the Class definitions and if can't find it then will look at the higher Classes.

laptop = Gadget.new
puts laptop.to_s

# Getter method
# After defining the instance method username we can access the instance variable @username

p phone.username # Thi is the method username, not the variable @username! It is a getter method
p phone.production_number
# p phone.password # Error, because there is no method for password
