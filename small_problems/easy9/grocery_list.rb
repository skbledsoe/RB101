=begin
problem: write a method that takes an array of arrays containing items and the number of items and returns an array with each item printed the given number of times

input: array
output: array

notes: 
  

algo:
  given a nested array
  initialize output array
  iterate over given array
    second element number of times
      append first element into output
  return output array

=end

def buy_fruit(array)
  output = []

  array.each do |arr|
    arr[1].times { output << arr[0] }
  end
  output
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]