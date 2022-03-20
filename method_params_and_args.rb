def praise_person(name)
  puts "#{name} is amazing"
  puts "#{name} is charming"
  puts "#{name} is talanted"
end

praise_person("Ivan")
praise_person "Boris"
praise_person("Yuriy") # Preffered syntax. use ()

def praise_person2(name, age)
  puts "#{name} is amazing"
  puts "#{name} is charming"
  puts "#{name} is talanted"
  puts "His age is #{age}"
end
puts
praise_person2("Ivan", 32)
praise_person2("Boris", 38)
