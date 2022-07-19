=begin
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

problem: write a method that takes a number and returns it with the digits reversed

input: integer
output: integer

notes: 
  integer will be positive
  there will be no leading 0s

algo:
  given an Integer
  initialize output Array
  call to_s on integer, call size, that number of times to do whatever
    initialize number and remainder, assign to divmod(10) on Integer
    append remainder into output array unless remainder is 0
    break if number is 0
  return output array
=end

def reversed_number(integer)
  output = []
  integer.to_s.size.times do 
  integer, remainder = integer.divmod(10)
    output << remainder
  end
  output.join.to_i
end


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) #== 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1