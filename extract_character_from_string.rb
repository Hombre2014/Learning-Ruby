story = "Once upon a time in a land far, far away"

p story.length
puts
p story[3] # 3 is the index, startingfrom 0
puts
p story[-1] # Extracting from the end (-1 is the last character)
p story[-2]
p story[-3]
puts
p story[100] # returns nil
puts
p story.slice(3)
p story.slice(-3)
