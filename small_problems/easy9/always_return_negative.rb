=begin
problem: write a method that takes an integer as an argument. If the number is positive, return the negative of that number, if it's negative or 0, return original number

input: integer
output: integer

notes: 
  

algo:
  given an integer
  if number is less than or equal to 0
    return number
  otherwise return negative number
  

=end

def negative(integer)
  return integer if integer <= 0
  return -integer
  
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby