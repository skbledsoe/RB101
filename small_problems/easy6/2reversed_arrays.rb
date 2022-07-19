=begin
problem: write a method that takes an array and reverses the elements in place

input: array
output: new array

notes:
  -original array should remain unchanged
  -cannot use built-in reverse method or previous reverse method
  -elements should be reversed at the element level, so if a string is an element, the characters inside the string should not be reversed

algo:
  given an array
  initialize output array
  iterate over array using each with index
    prepend current element into output array
  return output array
    
=end

def reverse(array)
  output = []
  array.each_with_index { |_, idx| output.prepend(array[idx]) }
  output
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
new_list = p reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true