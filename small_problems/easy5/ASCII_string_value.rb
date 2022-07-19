=begin
problem: write a method that takes a string and determines the ASCII value of each character, then returns the sum of those values

input: string
output: integer

notes:
  can use ord method to determine ascii value

algo:
  given a string
  initialize sum to 0
  iterate over string using chars and each
    assign sum to the value of adding sum to the return value of the ord method on each element
  return sum
=end

def ascii_value(str)
  sum = 0
  str.chars.each { |char| sum += char.ord }
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0