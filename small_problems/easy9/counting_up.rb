=begin
problem: write a method that takes an integer and returns an array of integers between 1 and given

input: integer
output: array

notes: 
  integer will always be valid and greater than 0

algo:
  given an integer
  initialize output array
  from 1 to integer
    append number into output
  return output

=end

def sequence(integer)
  if integer > 0
    (1..integer).to_a
  else
    (integer..0).to_a
  end
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(0) 
p sequence(-1) 
p sequence(-5) 