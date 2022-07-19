=begin
problem: write a method that takes a string and returns a new string in which every character in given string is doubled

input: string
output: new string

notes: 
  special characters and spaces are doubled as well
  empty string returns an empty string

algo:
  given a string
  initialize empty output string
  iterate over given string using chars
    append current character * 2 into output string
  return output

=end

def repeater(string)
  output = ''
  string.chars.each do |char|
    output << char * 2
  end
  output
end

p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''