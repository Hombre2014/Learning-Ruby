require_relative 'app_store'

class Gadget

  attr_reader :production_number, :apps
  attr_accessor :username # add , :password for the test below Date
  # attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_production_numer
    @apps = []
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}. It is made from the #{self.class} class and it has the ID #{self.object_id}."
  end

  def install_app(name)
    app = AppStore.find_app(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find { |installed_app| installed_app.name == name }
    apps.delete(app) unless app.nil?
  end

  def rest(username, password)
    # @username = username # It is going to work , but it is not
    # @password = password # the best practice.
    # @apps = [] # We duplicate code.
    # username = username # Will not work, because Ruby is not so smart when it is using the setter method. It will think that username on the left side is a new local variable, but not the setter method username, which will set the instance variable @username. That is why we have to use self.
    self.username = username
    self.password = password
    self.apps = []
  end

  def password=(new_password)
    @password = new_password if validate_password(new_password)
  end

  private

  attr_writer :apps

  def generate_production_numer
    start_digits = rand(10000..99999)
    end_digits = rand(10000..99999)
    alphabet = ("A".."Z").to_a
    middle_digits = "2022"
    5.times { middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

  def validate_password(new_password)
    new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
  end
end

phone = Gadget.new("user123", 'pass123')
# p phone.production_number
# p phone.to_s
# p phone.generate_production_numer # This is working before making generate_production_numer method private, but it is bad design!
# Once we made generate_production_numer private this is not going to be accessible on the object!
# p phone.generate_production_numer # Error

# Validation

# puts phone.password
# phone.password = 123 # Validation will prevent the change of password
# puts phone.password
# phone.password = ("test") # Validation will prevent the change of password
# puts phone.password
# phone.password = ("computer") # Validation will prevent the change of password
# puts phone.password
# phone.password = ("computer123") # Validation will work and password will be changed!
# puts phone.password

# Instance method to instance variable

# The to_s method. Instead of original accessing the @production_number and @username variable, we can use their methods:

# def to_s
#   "Gadget #{production_number} has the username #{username}. It is made from the #{self.class} class and it has the ID #{object_id}."
# end

# In the def above we have to use the self. prefix for the class method, because Ruby will be confused for this special word. For the rest of the methods, self. is not needed.

g = Gadget.new('Boris', "password")
p g.apps
g.install_app(:Chat)
p g.apps
g.install_app(:Twitter)
p g.apps
g.install_app(:Twitter) # Will not add Twitter second time
p g.apps
g.delete_app(:Chat)
p g.apps
