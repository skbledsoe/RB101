=begin
problem: write a method that takes an array and an object as a search value and returns a boolean based on whether or not the integer is included in the array

input: array and object
output: boolean

notes:
  do not use built-in include method

algo:
  given an array and a search value
  iterate over array
    return true if current element equals search value
    otherwise next
  return false if true is not returned
    

=end

def include?(array, object)
  array.each { |element| return true if element == object }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false