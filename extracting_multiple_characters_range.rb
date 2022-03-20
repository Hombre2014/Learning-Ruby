story = "Once upon a time in a land far, far away..."
p story.length
p story[0..5]
p story.slice(27..39)
puts
p story[0...5]
p story.slice(27...39) # This (three dots ...) does not include index 39!
puts
p story.slice(32..50) # It will ignore any bigger number than the index
puts
p story[25..-9] # Starts from index position 25 and goes to the 9 character from the end
p story[25...-9]
