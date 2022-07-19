=begin
problem: write a method that takes a string and returns the next to last word in the given string

input: string
output: string

notes: 
  string will always contain at least two words

algo:
  given a string
  call split on string, pass in -2 index

  MIDDLE STRING:
  given a string
  assign string.split to an array
  if array length is less than two,
    return string
  if length of array is less than four,
    pass in -2 as index argument
  else
    pass in length of array / 2 as index argument

=end

def penultimate(string)
  string.split[-2]
end

def penultimate_middle(string)
  array = string.split

  if array.length < 2
    string
  elsif array.length < 4
    array[-2]
  else
    array[(array.length / 2)]
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p penultimate_middle('last word') 
p penultimate_middle('Launch School is great!') 
p penultimate_middle('Launch School is so great!') 
p penultimate_middle('First middle last') 
p penultimate_middle('First first middle last last') 