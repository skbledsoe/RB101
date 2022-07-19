=begin
problem: write a method that takes a string and returns a new string with every other letter capitalized

input: string
output: new string

notes:
  non-letter characters are not changed but count as characters when switching cases

algo:
  given a string
  iterate over string using chars and each with index, assign to output
  if index is even, call upcase
  if index is odd, call downcase

  join output
=end

def staggered_case(string)
  output = string.chars.each_with_index do |char, idx|
    case idx.even?
    when true then char.upcase!
    when false then char.downcase!
    end
  end
  output.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'