=begin
problem: write a method that takes a string and returns a new string with the case of each letter swapped to the opposite

input: string
output: new string

notes:
  special characters should remain unchanged
  do not use built-in swapcase method

algo:
  given a string
  iterate over using string.split and map, assign to temp array
    iterate over each word using map, assign to another temp array
      if character equals char upcase,
        call downcase on character
      if char equals char downcase
        call upcase on character
    join inner array
  join outer array with spaces
=end

def swapcase(string)
  array = string.split.map do |word|
    arr = word.chars.map do |char|
      if char == char.downcase
        char.upcase
      else
        char.downcase
      end
    end
    arr.join
  end
  array.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'