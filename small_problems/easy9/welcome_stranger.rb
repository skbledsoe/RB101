=begin
problem: write a method that takes an array of two or more elements and a hash that contains two keys as arguments. The array will contain the person's name [first, middle, last] and the hash will contain their :title and :occupation. Return a string greeting that uses each element from both arguments.

input: array and hash
output: string

notes: 
  

algo:
  given an array
  initialize name variable and assign to array joined with spaces

  given a hash
  initialize career variable and assign to the hash values concatenated

  return a string using interpolation to display the name and career variables

=end

def greetings(name, career)
  "Hello, #{name.join(' ')}! Nice to have a #{career.values.join(' ')} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> Hello, John Q Doe! Nice to have a Master Plumber around.