=begin
problem: write a method that takes a string and returns an array containing each word from the given string as well as the length of each word

input: string
output: array

notes: 
  words are separated by single spaces
  any substring of non-space characters is a word

algo:
  given a string
  iterate over string using split and map
    add a space and size of the word to the end of word


=end

def word_lengths(string)
  string.split.map { |word| word + " #{word.size}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []