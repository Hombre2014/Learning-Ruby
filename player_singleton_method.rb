class Player
  def play_game
    rand(1..100) > 50 ? "Winner!" : "Loser!"
  end
end

bob = Player.new
boris = Player.new

p bob.play_game
p boris.play_game

# def boris.cheat # method only on the object boric, not on the class Player!
#   "Winner"
# end

def boris.play_game # Here we can overwrite the parent method
  "Winner"
end

p bob.play_game
# p boris.cheat
p boris.play_game
p boris.class.ancestors
p boris.singleton_methods
p boris.singleton_class # Anonimous class. This class is not in the ancestors
p bob.singleton_methods # Des not have singleton method
p bob.singleton_class
