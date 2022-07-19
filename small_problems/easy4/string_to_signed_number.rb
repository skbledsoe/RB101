=begin
problem: write a method that takes a string of digits and returns the digits as an integer, extended to work with signed numbers

input: string
output: integer

notes:
  leading - will return a negative number, leading + will return positive
  no leading sign will return a positive number
  string will always contain a valid number
  do not use to_i or integer()

algo:
  given a string
  convert to integer using string_to_integer method
  if string starts with -
    return value of string_to_integer led with -
  if string starts with + or no sign
    return value of string_to_integer


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

def string_to_signed_integer(str)
  if str.include?("-")
    str.delete!('-')
    -string_to_integer(str)
  elsif str.include?('+')
    str.delete!('+')
    string_to_integer(str)
  else
    string_to_integer(str)
  end
end

p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('+100') 