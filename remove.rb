# Remove
p  [1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 5] - [2, 3]

p  [1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 5].-([2, 3])

a = [1, 1, 2, 2, 2, 3, 3, 3, 3, 4, 5]
b = [2, 3]

def custom_remove(arr1, arr2)
  final = []
  arr1.each { |value| final << value unless arr2.include?(value) }
  final
end

p custom_remove(a, b)

# Intersection (removes duplicates too)

p [1, 1, 2, 3, 4, 5] & [1, 1, 1, 4, 5, 8, 9]
p [1, 1, 2, 3, 4, 5] & [1, 1, 1, 4, 5, 8, 9] & [4, 5, 6, 7]

p [1, 1, 2, 3, 4, 5].&([1, 1, 1, 4, 5, 8, 9])

a = [1, 1, 2, 3, 4, 5]
b = [1, 1, 1, 4, 5, 8, 9]

def custom_intersection(arr1, arr2)
  final = []
  arr1.uniq.each { |element| final << element if arr2.include?(element) }
end

p custom_intersection(a, b)
