=begin
problem: write a method that takes an array of integers and returns the result of multiplying the integers, dividing that by the number of integers, and rounding the result to 3 decimal places.

input: array of integers
output: float

notes:
  array is non-empty

algo:
  given an array of integers
  call inject on array and pass in *, assign to sum
  reassign sum to value of convert sum to float and divide by length of array
  call round method on float and pass in 3


=end

def show_multiplicative_average(array)
  sum = array.inject(:*)
  sum = sum.to_f / array.length
  "The result is #{format("%.3f", sum)}."
end


p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667