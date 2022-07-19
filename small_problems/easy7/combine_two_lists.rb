=begin
problem: write a method that takes two arrays and returns a new array with all elements from given arrays combined, alternating in order

input: two arrays
output: one array

notes:
  first from arr1, first from arr2, second from arr1, second from arr2, etc
  both arrays are non-empty and have same number of elements

algo:
  given two arrays
  initialize output array
  counter = 0
  begin loop
    append first element from array one into output (output << arr1[counter])
    append first element from array two into output
    add one to counter
    break if output length is equal to array 1 plus array 2 size

    

=end

def interleave(arr1, arr2)
  output = []
  counter = 0
  while output.length < arr1.length + arr2.length
    output << arr1[counter] << arr2[counter]
    counter += 1
  end
  output
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']