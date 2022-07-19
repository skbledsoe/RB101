=begin
problem: modify the method so that it ignores special characters when determining the case of each letter

input: string
output: new string

notes:
  special characters should still be included in the return value

algo:
  given a string
  initialize index variable to 0
  iterate over string using chars and each, assign to output
    if character is not included in the alphabet,
      add 2 to index
    if index is even
      upcase character
      add 1 to index
    if index is odd
      downcase character
      add 1 to index
  join output
=end
ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def staggered_case(string)
  index = 0
  output = string.chars.each do |char|
              if !!ALPHABET.include?(char) == false
                index += 2
              elsif index.even?
                char.upcase!
                index += 1
              else
                char.downcase!
                index += 1
              end
            end



  output.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'