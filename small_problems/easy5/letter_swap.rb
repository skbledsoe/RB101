=begin
problem: write a method that takes a string of words separated by spaces and returns a string with the first and last letter of each word swapped

input: string
output: string

notes:
  every word contains at least one letter
  string will always contain at least one word
  strings contain nothing but words and spaces

algo:
  given a string
  iterate over string using split, assign to array variable
    assign the first and last letter of each word to the last and first letter
  return array variable using join(' ')
    
=end

def swap(str)
  arr = str.split.each do |word|
          word[0], word[-1] = word[-1], word[0]
        end
  arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'