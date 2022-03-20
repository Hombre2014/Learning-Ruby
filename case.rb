def rate_my_food(food)
  case food
  when "Steak"
    "Pass the steak sauce"
  when "Sushi"
    "Great choice"
  when "Tacos", "Burritos", "Quesadillas"
    "Cheesy and filling"
  when "Tofu", "Brussel Sprouts"
    "Disgusting"
  else
    "I don't know about that food"
  end
end

puts rate_my_food("Tacos")

def calculate_school_grade(grade)
  case grade
  when 90..100 then "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else "F"
  end
end

p calculate_school_grade(93)
p calculate_school_grade(83)
p calculate_school_grade(72)
p calculate_school_grade(64)
p calculate_school_grade(59)

p !!false
p !nil
p !!nil
p !1
p !!1
