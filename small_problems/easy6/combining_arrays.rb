=begin
problem: write a method that takes two arrays and returns an array that contains all of the values from given arrays

input: two arrays
output: one array

notes:
  there should be no duplicate values in returned array

algo:
  given two arrays
  assign output array to array1 + array 2
  return output.uniq
    
=end

def merge(arr1, arr2)
  output = arr1 + arr2
  output.uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]