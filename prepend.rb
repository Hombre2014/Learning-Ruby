# module Purchaseable
#   def purchase(item)
#     "#{item} has been purchased!"
#   end
# end
#
# class Bookstore
#   include Purchaseable
#
#   def purchase(item)
#     "You bought a copy of #{item} at the bookstore!"
#   end
# end
#
# bn = Bookstore.new
# p Bookstore.ancestors
# p bn.purchase('1984')

# If we use prepend instead of include it changes the order of the ancestors

module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  prepend Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!"
  end
end

bn = Bookstore.new
p Bookstore.ancestors
p bn.purchase('1984')
