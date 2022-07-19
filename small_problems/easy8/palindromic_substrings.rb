=begin
problem: write a method that takes a string and returns a list of all substrings that are palindromic

input: string
output: array

notes: 
  return array should be arranged in same order that substrings appear in string
  duplicate palindromes should be included
  use the previous substrings method
  case sensitive (AbcbA yes, Abcba no, Abc-bA no)
  single characters are not palindromes

algo:
  given a string
  initialize output array
  pass string to substrings method to get array of all substrings
  iterate over the array
    if word is equal to word reverse and greater than one, append it to output array
  return output array
=end

def leading_substrings(string)
  output = []
  (0..string.size - 1).each do |index|
    output << string[0..index]
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

def palindromes(string)
  output = []
  array = substrings(string)

  array.each do |word|
    output << word if word == word.reverse && word.length > 1
  end

  output
end


p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]