empty_hash = {}
# p empty_hash

nfl_roster = {
  'Tom Brady' => 'New England Patriots',
  'Tony Romo' => 'Dallas Cowboys',
  'Rob Gronkowski' => 'New England Patriots'
}

# p nfl_roster

nba_roster = {
  "Cleveland Cavaliers" => ['LeBron James', 'Kevin Love', 'Kyrie Irving'],
  "Golde State Warriors" => ['Stephen Curry', 'Klay Thompson', 'Chuck Boise']
}

# p nfl_roster['Tony Romo']
# p nba_roster['Cleveland Cavaliers']
# p nba_roster['Cleveland Cavaliers'][1]
# p nfl_roster['Tony romo'] # returns nil (r != R)
# p nfl_roster['Tony Romos'] # returns nil non existing key

# Symbols - lightweight strings

# p :key # Symbol
# p :key.class
# p "name"
# p "name".class
# p :key.methods
# p "name".methods # Many more method on strings
# p :key.methods.length
# p "name".methods.length

# person = {:name => 'Boris',
#           :age => 29,
#           :handsome => true,
#           :languages => ['Ruby', 'Python', 'JavaScript']
#         }

# better way of definition

person = {name: 'Boris',
          age: 29,
          handsome: true,
          languages: ['Ruby', 'Python', 'JavaScript']
        }

# p person[:name]
# p person[:age]
#
# p person['name'] # nil

# Conversion

p :age.class
p :age.to_s.class # to_s convert hte symbol to string

p "age"
p "age".to_sym
p "age".to_sym.class

p "Tom tom"
p "Tom tom".class
p "Tom tom".to_sym # Converts the string to a symbol but with quotes "" when there is a space in the string!
p "Tom tom".to_sym.class

# When there is no space

p "Tom_tom"
p "Tom_tom".class
p "Tom_tom".to_sym
p "Tom_tom".to_sym.class
