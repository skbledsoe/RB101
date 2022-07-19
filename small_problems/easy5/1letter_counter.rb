=begin
problem: wrtie a method that takes a string with one or more words and returns a hash that shows how many times each size of word appears

input: string
output: hash

notes:
  words will be separated by spaces
  special characters are considered part of the word

algo:
  TURN INTO INTEGERS:
  given a string
  iterate over string using split and map, assign to temporary array
    call size on word to get the length of the word
  sort array

  TURN INTO HASH:
  given a string, pass into integer method
  iterate using each with object, hash as object
    hash key is current element in array
    hash value is array.count current element
    
=end

def string_to_integers(string)
  array = string.split.map! do |word|
    word.size
  end
  array.sort
end

def word_sizes(string)
  array = string_to_integers(string)
  array.each_with_object({}) do |word, hash|
    hash[word] = array.count(word)
  end
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}