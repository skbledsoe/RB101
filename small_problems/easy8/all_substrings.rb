=begin
problem: write a method that takes a string and returns a list of all substrings in the string

input: string
output: array

notes: 
  -return array should be ordered by the string index of the starting letter of each substring - substrings that start at 0 first, then at 1, then 2, etc
  -use previous leading_substrings method

algo:
  given a string
  initialize output array
  from 0 to size of string - 1 with index as parameter
    pass in index..-1 on string to leading-substrings and append to output
  return output flattened

=end

def leading_substrings(string)
  output = []
  index = 0

  until index == string.size
    output << string[0..index]
    index += 1
  end

  output
end

def substrings(string)
  output = []

  (0..string.size - 1).each do |index|
    output << leading_substrings(string[index..-1])
  end

  output.flatten
end

p substrings('abcde') == ['a', 'ab', 'abc', 'abcd', 'abcde', 'b', 'bc', 'bcd', 'bcde', 'c', 'cd', 'cde', 'd', 'de', 'e']