def letter_avatar(user_hash)
   colors = ['red','blue','yellow','green','pink','ambar','black']
   first_initial = user_hash[:first_names].chr.upcase
   second_initial = user_hash[:last_name].chr.upcase

   output = {}
   output[:initials] = first_initial + second_initial
   output[:color] = colors[rand(colors.size)]
   if output[:initials] == ''
     output[:initials] = 'AV'
   end
   puts output
end

colors = ['red','blue','yellow','green','pink','ambar','black']
user = { id: 3, first_names: 'Jhon Bro', last_name: 'Smith'}
user1 = { id: 3, first_names: '', last_name: ''}
# p letter_avatar(user)r => # {initials: 'JS', color: 'yellow'}

puts letter_avatar(user)
puts letter_avatar(user1)
