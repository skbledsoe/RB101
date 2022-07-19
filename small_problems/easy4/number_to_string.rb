=begin
problem: write a method that takes an integer and converts it to a string representation

input: integer
output: string

notes:
  do not use to_s, string(), kernel format, or other standard conversion methods
  integer will be 0 or positive

algo:
  given an integer (number)
  initialize output array
  begin a loop
    assign number, remainder to return value of calling divmod on number with argument of 10
    prepend remainder into output array
    break if number is 0
  call join on output array

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

p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'