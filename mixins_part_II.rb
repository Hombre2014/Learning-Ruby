module Purchaseable
  def purchase(item)
    "#{item} has been purchased!"
  end
end

class Bookstore
  include Purchaseable

  def purchase(item)
    "You bought a copy of #{item} at the bookstore!" # Add after the first puts command
  end
end

# barnes_and_noble = Bookstore.new
# p barnes_and_noble.purchase("Atlas Shrugged")

class Supermarket
  include Purchaseable

  def purchase(item)
    "Thanks for visiting the Supermarket and buying #{item}"
  end
end

# walmart = Supermarket.new
# p walmart.purchase('Ice cream')

class CornerMart < Supermarket
  def purchase(item)
    "Yay! A great purchase of #{item} from your corner mart!"
  end
end

# quickstop = CornerMart.new
# p quickstop.purchase('Toy')
p Bookstore.ancestors
bn = Bookstore.new # Loo at the order of class to look at for the method!
p bn.purchase('1984')
puts
shop = Supermarket.new
p shop.purchase('Cereal')
p CornerMart.ancestors
puts
quickstop = CornerMart.new
p quickstop.purchase("Slim Jims")
