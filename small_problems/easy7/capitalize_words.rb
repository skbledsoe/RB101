=begin
problem: write a method that takes a string and returns a new string with the first letter of each word capitalized

input: string
output: string

notes:
  words quoted within the string are ignored

algo:
  given a string of words
  iterate over words using split and map, assign to temp array
    if word contains \, delete \
      next
    else call capitalize on each word
  call join on array with spaces
=end

def word_cap(string)
  arr = string.split.map do |word|
          word.capitalize
        end
  
  arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'