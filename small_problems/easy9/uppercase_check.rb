=begin
problem: write a method that takes a string and returns true if all characters are upcase and false otherwise

input: string
output: boolean

notes: 
  special characters are ignored
  empty strings return true

algo:
  given a string
  does string equal string upcase?

=end

def uppercase?(string)
  string == string.upcase
end

p uppercase?('t') #== false
p uppercase?('T') #== true
p uppercase?('Four Score') #== false
p uppercase?('FOUR SCORE') #== true
p uppercase?('4SCORE!') #== true
p uppercase?('') #== true