=begin
problem: wwrite a method that takes an array and returns an array of two nested arrays that contain each half of the given array

input: array
output: array

notes:
  -if given array contains an odd number of elements, the middle element should be in the first half 

algo:
  given an array
  initialize arr1 and arr2 to empty arrays
  if array.length is even
    initialize idx = (array.length / 2) - 1
    move the first half of the array into array 1 (array[0..idx])
    move the second half into array 2 (array[(idx + 1)..array.last])
  if array length is odd
    idx = array.length / 2
    move the first half of the array into array 1 (array[0..idx])
    move the second half into array 2 (array[(idx + 1)..array.last])
  return array1 + array2
=end

def halvsies(array)
  array1 = []
  array2 = []
  if array.length.odd?
    idx = (array.length / 2)
    array1 << array[0..idx]
    array2 << array[(idx + 1)..-1]
  else
    idx = (array.length / 2) - 1
    array1 << array[0..idx]
    array2 << array[(idx + 1)..-1]
  end
  array1 + array2
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]