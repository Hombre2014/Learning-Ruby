# module Announcer
#   def who_am_i
#     "The name of this class is #{self}"
#   end
# end
#
# class Dog
#   include Announcer
# end
#
# class Cat
#   include Announcer
# end
#
# watson = Dog.new
# p watson.who_am_i

# If we change the include with extend, Ruby will gives an error, because the method who_am_i is not on the Class Dog or Cat, but on the module Announcer. Then we can use the method directly on the Class:

module Announcer
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Dog
  extend Announcer
end

class Cat
  extend Announcer
end

# watson = Dog.new
# p watson.who_am_i # Error!
p Dog.who_am_i
p Cat.who_am_i
