menu = {
  burger: 3.99,
  taco: 2.99,
  chips: 0.5
}

# p menu[:burger]
# p menu['burger']
#
# p menu.fetch(:taco)

# p menu.fetch(:salad) # Gives an error not a nil!

# p menu.fetch(:salad, 'Not found')
# p menu.fetch(:salad, nil)
# p menu.fetch(:salad, 4.99)
#
# p menu.fetch(:taco, 'Not found') # Will never print Not found, because :taco exist in the hash's key

# Add key value pair and modification

# p menu
#
# p menu[:burger]
#
# menu[:sandwich] = 4.88
#
# p menu
#
# menu[:taco] = 3.88
#
# p menu
#
# menu.store(:salad, 5.99)
#
# p menu
#
# menu.store(:steak, 24.99)
#
# p menu
# p menu[:steak]

# Length and emplty methods

# shopping_list = {
#   bananas: 5,
#   oranges: 10,
#   carrots: 3,
#   crackers: 15
# }
#
# vegan_list = {}
#
# p shopping_list
# p shopping_list.length
# p vegan_list.length
#
# p shopping_list.empty?
# p vegan_list.empty?

# Each method

# capitals = {
#   alabama: 'Mongomery',
#   alaska: 'Juneau',
#   arizona: 'Phoenix',
#   arkansas: 'Little Rock'
# }
#
# capitals.each do |key, value|
#   puts "Quering hash ..."
#   puts "The capital of #{key.capitalize} is #{value}"
# end
#
# capitals.each do |guess|
#   p guess
#   p guess[0]
#   p guess[1]
# end

# each_key and each_value methods

# salaries = {
#   director: 100000,
#   producer: 200000,
#   ceo: 300000
# }
#
# salaries.each_key do |position|
#   puts "Employee Record:--------"
#   puts "#{position}"
# end
#
# salaries.each_value do |salary|
#   puts "Employee earns"
#   puts "#{salary}"
# end

# Challenge

def key_and_values(hash)
  final = []
  hash.each_key { |key| final << key }
  final
end

# p key_and_values(salaries)

# Retrieve keys or values from a hash

shopping_list = {
  bananas: 5,
  oranges: 10,
  carrots: 3,
  crackers: 15,
  apples: 5
}

# p shopping_list.keys
# p shopping_list.values
# p shopping_list.values.uniq

# Create a hash with default values

# fruit_prices = {
#   bananas: 1.05
# }
#
# p fruit_prices[:orange]

# fruit_prices = Hash.new(0) # Default value is 0
#
# fruit_prices[:banana] = 1.20
# fruit_prices[:orange] = 0.69
# fruit_prices[:kiwi] = 2.99
#
# p fruit_prices[:kiwi]
# p fruit_prices[:steak] # Doesn not return nil, but 0, when there is default value!
#
# p fruit_prices
# fruit_prices[:steak] = 6.99
# p fruit_prices
# p fruit_prices[:steak]
#
# fruit_prices.default = "Whoops. Not found" # No parentesis, just = sign
#
# p fruit_prices[:celery]

# Convert a hash to an array

spice_girls = {
  scary: "Melany Brown",
  sporty: "Melanie Chisholm",
  baby: "Emma Bunton",
  ginger: "Geri Halliwell",
  posh: "Victoria Beckham"
}

# p spice_girls.to_a # Returns aray of arrays
# p spice_girls.to_a.flatten

# Reverse

# power_rangers = [
#   [:red, 'Jason'],
#   [:black, 'Zack'],
#   [:blue, 'Billy'],
#   [:yellow, 'Trini'],
#   [:pink, 'Kimberly']
# ]
#
# p power_rangers
# p power_rangers.to_h

# Sort and sort_by methods

pokemon = {
  squirtel: 'Walter',
  bulbasar: 'Grass',
  charizard: 'Fire'
}


# p pokemon.sort # Returns an array of arrays sorted by the key
# p pokemon.sort.reverse
#
# p pokemon.sort_by { |key, value| key }
# p pokemon.sort_by { |key, value| value }


# The key and value methods

cars = {
  toyota: 'Camry',
  chevrolet: 'Aveo',
  ford: 'F-150',
  kia: 'Soul'
}
#
# p cars.key?(:ford) # True old method has_key?
# p cars.key?('ford') # False
# p cars.key?(:ferary) # False

# p cars.value?('F-150') # True old method has_value?
# p cars.value?(F-150) # Error

# Hashes in methods as parameters

def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

# puts calculate_total_1(24.99, 0.18, 0.07)
# puts calculate_total_1(0.18, 0.07, 24.99) # Wrong order of arguments
#
# def calculate_total_2(info) # info is hash
#   tax_amount = info[:price] * info[:tax]
#   tip_amount = info[:price] * info[:tip]
#   info[:price] + tip_amount + tax_amount
# end
#
# bill = {
#   price: 24.99,
#   tip: 0.18,
#   tax: 0.07
# }
#
# puts calculate_total_2(bill)
#
# bill2 = {
#   tip: 0.18,
#   tax: 0.07,
#   price: 24.99
# }
#
# puts calculate_total_2(bill2) # No problem if the keys are in different order
#
# puts calculate_total_2({tax: 0.05, tip: 0.30, price: 9.99})
# puts calculate_total_2(tax: 0.05, tip: 0.30, price: 9.99) # We can remove the curly braces if the hash is the last argument in a method's call
# puts calculate_total_2 tax: 0.05, tip: 0.30, price: 9.99 # We can remove also the braces

# Delete method

super_heros = {
  spiderman: 'Peter Parker',
  superman: 'Clark Calls',
  batman: 'Bruce Wayne'
}

# p super_heros
#
# removed = super_heros.delete(:spiderman) # Removes the pair, but returns just the value, not the pair!
# p super_heros
# p removed

# Select and Reject methods

recipe = {
  sugar: 5,
  flour: 10,
  salt: 2,
  pepper: 4
}

# p high = recipe.select { |key, value| value >= 5 }
#
# p low = recipe.reject { |key, value| value >= 5 }
#
# p includes_s = recipe.select { |key, value| key.to_s.include?('s') }

# Merge method

market = {garlic: '3 cloves', tomatos: '5 batches', milk: '1.25 galons'}
kitchen = {bread: '2 loaves', yogurt: '20 cans', milk: '2 galons'}

# p market
# p kitchen

# p market.merge(kitchen) # When there is the same keys in both hashes, Ruby is going to keep the value from parameter passed in merge call.

# p kitchen.merge(market)
#
# p market
# p kitchen
#
# p market.merge!(kitchen)
#
# p market
# p kitchen

def custom_merge(hash1, hash2)
  new_hash = hash1.dup
  hash2.each { |key, value| new_hash[key] = value }
  new_hash
end

# p custom_merge(market, kitchen)

# Challenge

sentence = 'Once upon a time in a land far far far far away this time a time'

def word_count(string)
  arr = string.split(' ')
  hash = Hash.new(0)
  arr.each { |e| hash[e] += 1 }
  hash
end

p word_count(sentence)
