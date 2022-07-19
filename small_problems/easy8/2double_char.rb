=begin
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

problem: write a method that takes a string and returns a string with every consonant doubled

input: string
output: string

notes: 
  ignore vowels and non-alphabetic characters

algo:
  initialize vowel constant with special chars and spaces included
  given a String
  initialize empty output string
  if current is included in vowel,
    append character into output String
  otherwise
    append character * 2 into output string    

=end
VOWEL = %w(a e i o u A E I O U) + (' '..'?').to_a 

def double_consonants(string)
  output = ''

  string.chars.each do |char|
    if VOWEL.include?(char)
      output << char
    else
      output << char * 2
    end
  end
  output
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""