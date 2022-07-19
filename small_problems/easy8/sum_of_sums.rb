=begin
problem: write a method that takes an array of integers and returns the sum of the sums of each sequence

input: array
output: integer

notes: 
  each sequence of [1, 2, 3, 4, 5] is 1+2, 1+2+3, 1+2+3+4, 1+2+3+4+5
  array always contains at least one number

algo:
  given an array
  initialize output array
  initialize index to 0
  until index == array.length
    append sum of array[0..index] to output array
    add one index
  call sum on output array

=end

def sum_of_sums(array)
  output = []
  index = 0

  until index == array.length
    output << array[0..index].sum
    index += 1
  end

  output.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35