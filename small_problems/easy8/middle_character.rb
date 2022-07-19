=begin
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

problem: write a method that takes a string and returns the middle character or characters, depending on the length

input: string
output: string

notes: 
  if string length is odd, return one character, if even, return two
  string will never be empty

algo:
  given a String
  assign to array using chars 
  iterate over array 
    if string length is odd
      return char at [(array length / 2) - 1] index place
    if string length is even
      return chars at ((array length / 2) - 1).. (array length / 2) index place
=end

def center_of(string)
  output = []
  index = (string.length / 2)
  array = string.chars
  array.each do
    if string.length.odd?
     output = array[index]
    else
     output = array[(index - 1)..index].join
    end
  end
  output
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'