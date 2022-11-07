class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

boris = Employee.new('Boris', 25)
# puts boris.introduce

class Manager < Employee

  attr_reader :rank

  def initialize(name, age, rank)
    # @name = name # Instead of repeating ourselfs, use super.
    # @age = age
    super(name, age)
    @rank = rank
  end

  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    # "Hi, my name is #{name} and I am the manager. Woo-hoo!"
    result = super
    result += " I'm also a manager"
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    "I'm working, OK?"
  end
end

# bob = Manager.new("Bob", 48)
# puts bob.introduce
# dan = Worker.new("Dan", 33)
# puts dan.introduce

# p bob.class
# p dan.class
#
# p Manager.ancestors
# puts Manager.superclass
# puts Manager < Employee # True
# puts Employee < Worker # False
# puts Manager < Object
# puts Manager < Kernel # Kernel is a module, but is higher in hiracrhy
# puts Manager < BasicObject

# is_a? and instance_of?
#
# puts bob.is_a?(Manager) # True
# puts dan.is_a?(Worker) # True
# puts dan.is_a?(Manager) # False
# puts bob.is_a?(Employee) # True
# puts bob.is_a?(Object) # True
# puts bob.is_a?(Kernel) # True
# puts bob.is_a?(BasicObject) # True
# puts bob.instance_of?(Manager) # True
# puts bob.instance_of?(Employee) # False
# puts bob.instance_of?(Object) # False
# puts bob.instance_of?(Kernel) # False
# puts bob.instance_of?(BasicObject) # False
# puts
# p bob.yell
# p dan.clock_in("8:30 AM")
# # p bob.clock_in("8:30 AM") # Error
# p dan.yell # After defining the same method in Worker class

# Overwriting the method in a subclass

# sam = Manager.new("Sam", 45)
# p sam.introduce
# p bob.introduce
# p dan.introduce
# puts
# sally = Manager.new("Sally", 42, "Senior Vice President")
# puts sally.introduce
# p sally.rank
# p sally.name
# p sally.age
# rick = Employee.new("Rick", 28)
# p rick.introduce
# p rick.name
# p rick.age
# p rick.rank # Error

# super without parentheses
# super with parenthese, but no arguments
# super with parantheses and with these arguments

class Car
  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    "Room! Room!"
  end
end

class Firetruck < Car
  attr_reader :sirens

  def initialize(maker, sirens)
    super(maker) # If no arguments is givin all the arguments will be sent to parent clas. If no parentheses no arguments will be sent as well. When only one argument is given (maker) only this argument will be sent to the parent class!
    @sirens = sirens
  end

  def drive
    super + " Beep! Beep" # super without parentheses
  end
end

class PoliceCar < Car
  def drive(speed) # There is an argument here
    super() + " Beep! Beep! I'm driving at #{speed} miles per hour" # super with parenthese, but no arguments. We do not pass the arguments in the parrent class. Just use the arguments locally
  end
end

# ft = Firetruck.new
# p ft.drive
# pc = PoliceCar.new
# p pc.drive(120)

ft = Firetruck.new("Ford", 4)
puts ft.maker
puts ft.sirens
