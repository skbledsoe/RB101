=begin
problem: write a method that takes an array of strings and returns an array of the same string values but with the vowels removed

input: array of strings
output: array of strings

notes:
  strings will be the same values

algo:
  given an array
  iterate over array
    for each element in the array, remove vowels
    
=end

def remove_vowels(arr)
  arr.each { |elem| elem.gsub!(/[aeiouAEIOU]/, '') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']