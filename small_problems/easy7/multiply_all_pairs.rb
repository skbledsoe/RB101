=begin
problem: write a method that takes two arrays of integers and returns an array that contains the product of every possible pair of numbers between the two arrays, with the result sorted by increasing value

input: two arrays
output: one array

notes: 
  final array should be sorted in increasing value
  arrays can be different sizes

algo:
  given two arrays
  initialize output array
  iterate over array 1
    iterate over array 2
    multiply the element in array 1 by the element in array 2 and append to output
  return output and call sort

=end

def multiply_all_pairs(arr1, arr2)
  output = []

  arr1.each do |elem|
    arr2.each do |elem1|
      output << elem * elem1
    end
  end

  output.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]