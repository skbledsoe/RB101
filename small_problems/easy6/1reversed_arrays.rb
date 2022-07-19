=begin
problem: write a method that takes an array and reverses the elements in place

input: array
output: same array

notes:
  -array needs to be mutated
  -cannot use built-in reverse method
  -elements should be reversed at the element level, so if a string is an element, the characters inside the string should not be reversed

algo:
  given an array
  iterate over array using each with index
    insert last item in array using insert and pop at current index
    add one to index
  return array
    
=end

def reverse!(array)
  array.each_with_index do |_, idx|
    array.insert(idx, array.pop)
    idx + 1
  end
  array
end

list = [1,2,3,4]
result = reverse!(list)
p result #== [4, 3, 2, 1] # true
p list #== [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true