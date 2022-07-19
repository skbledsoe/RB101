=begin
problem: write a method that takes a string of digits and returns the digits as an integer

input: string
output: integer

notes:
  do not use to_i method or integer()
  don't worry about leading + or - signs
  all characters will be numeric

algo:
  given a string
  initialize digits hash with string digits as keys and integers as values
  initialize output array
  initialize idx variable to 1
  convert string to an array using split or chars
  iterate over array using each
    assign each num to the value of digits hash [num]
      multiply element by (10 ** array length - idx)
      add it to output array
      add 1 to idx
  return sum of output array

=end
DIGITS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(str)
  output = []
  idx = 1
  arr = str.chars
  arr.each do |num|
    num = DIGITS[num]
    output << num * (10**(arr.length - idx))
    idx += 1
  end
  output.sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570