=begin
problem: write a method that takes two integers, a count and the first number of the sequence, and returns an array that contains count number of elements that are multiples of the given starting number.

input: integers
output: array

notes: 
  count argument will always be 0 or greater
  if count is 0, return an empty array
  starting number can be any integer value

algo:
  given a count and a starting integer
  initialize output array
  count times
    append starting integer into output
    add starting integer to starting integer
  return output


=end

def sequence(count, start)
  output = []
  sum = start

  count.times do
    output << start
    start += sum
  end
  
  output
end

p sequence(5, 1) #== [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []