p [1, 1, 2, 3] | [3, 4, 4, 5] | [4, 5, 6, 7]

a = [1, 1, 2, 3]
b = [3, 4, 4, 5]

def custom_union(arr1, arr2)
  arr1.dup.concat(arr2).uniq
end

p custom_union(a, b)
