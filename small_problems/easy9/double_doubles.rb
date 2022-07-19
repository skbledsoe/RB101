=begin
problem: create a method that takes an integer and returns that integer multiplied by 2, unless the given integer is a double number then you will return as is.

input: integer
output: integer

notes: 
  a double number has an even number of digits whose left-side digits mirror the right-side digits (103103, 3333, 44, 7676)

algo:
  given an integer
  initialize size variable to the value of digits and size method on integer
  initialize digits array to calling digits and reverse on integer
  initialize first_half variable
    index 0 to size/2 -1 of digits
  initialize second_half
    index size/2 to -1
  if size is even and first_half equals second_half
    return integer
  otherwise
    return integer * 2
  

=end

def twice(integer)
  digit_array = integer.digits.reverse
  size = digit_array.size
  first_half = digit_array[0..((size / 2) -1)]
  second_half = digit_array[(size / 2)..-1]

  return integer if size.even? && first_half == second_half
  return integer * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10