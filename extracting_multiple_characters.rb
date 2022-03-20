story = "Once upon a time in a land far, far away"

p story[5]  # extract from index 5
p story[5, 4] # second argument is how many characters to extract
p story[0, 5]
p story[0, 10]
puts
p story.slice(0, 10)
p story.slice(0, story.length)
puts
p story[-7, 5]
p story.slice(-15, 10)
