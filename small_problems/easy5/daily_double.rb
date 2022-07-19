=begin
problem: write a method that takes a string and returns a new string with any double+ letters replaced with a single character

input: string
output: new string

notes:
  do not use squeeze method

algo:
  given a string
  initialize output array
  iterate over string using chars
    if current char is equal to nex char
      next
    else
      append char into output array

    return output array joined
    
=end

def crunch(string)
  output = []
  arr = string.chars
  arr.each_with_index do |char, idx|
    next if char == arr[idx + 1]
    output << char
  end
  output.join('')
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''