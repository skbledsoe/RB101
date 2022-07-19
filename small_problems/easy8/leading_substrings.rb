=begin
problem: write a method that takes a string and returns a list of substrings that start at the beginning of the string

input: string
output: array of strings

notes: 
  array should be ordered from smallest to largest

algo:
  given a string
  initialize output array
  initialize index to 0
  until index equals size of string
    append string 0..index into output
    add one to string
  return output array

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

p leading_substrings('abc') #== ['a', 'ab', 'abc']
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy')# == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']