=begin
problem: write a method that takes a string of lowercased words and an assortment of special characters and return a string with special characters replaced with spaces

input: string
output: string

notes:
  spaces should not be consecutive

algo:
  given a string
  initialize empty output array
  replace special characters with spaces
  iterate over string using chars, assign to temporary array
    if current character equals the next character
      next
    otherwise
      add to output array

  return output array joined
    
=end

def cleanup(string)
  output = []
  arr = string.gsub(/[^a-z]/, ' ').chars
  arr.each_with_index do |char, idx|
    next if char == arr[idx + 1]
    output << char
  end
  output.join
end

p cleanup("---what's my +*& line?") == ' what s my line '