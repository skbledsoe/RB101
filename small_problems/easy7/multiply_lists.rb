=begin
problem: write a method that takes two arrays of integers and returns an array that contains the product of each pair of numbers at the same index.

input: two arrays
output: one array

notes:
  arrays will contain the same number of elements

algo:
  given to arrays
  initialize output array
  iterate over array one using each with index
    iterate over array two using each with index
    append the product of array1[index] and array2[index]
  return output array

=end

def multiply_list(arr1, arr2)
  output = []

  arr1.each_with_index do |_, idx|
    output << arr1[idx] * arr2[idx]
  end

  output
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]