=begin
problem: write a method that takes an integer, positive or negative, and converts it to a string representation

input: integer
output: string

notes:
  do not use to_s, string(), kernel format, or other standard conversion methods
  integer can be positive or negative

algo:
  given an integer (number)
  if number is less than 0,
    add number to number * 2
    return '-' + integer_to_string(number)
  if number > 0
    return '+' + integer_to_string(number)
  otherwise
    integer_to_string(number)

=end

def integer_to_string(number)
  output = []
  loop do 
    number, remainder = number.divmod(10)
    output.unshift(remainder)
    break if number == 0
  end
  output.join('')
end

def signed_integer_to_string(number)
  if number < 0
    number = number + (-number * 2)
    '-' + integer_to_string(number)
  elsif number > 0
    '+' + integer_to_string(number)
  else
    integer_to_string(number)
  end
end

p signed_integer_to_string(4321) #== '4321'
p signed_integer_to_string(-123) #== '0'
p signed_integer_to_string(0) #== '0'