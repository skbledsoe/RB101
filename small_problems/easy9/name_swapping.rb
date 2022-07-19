=begin
problem: write a method that takes a string containing a first and last name and returns a string with "last, first"

input: string
output: string

notes: 
  

algo:
  given a string
  initialize first and last variable to calling split on string
  return last and first with a comma and space between


=end

def swap_name(name)
  first, last = name.split
  last + ", " + first
end

p swap_name('Joe Roberts') == 'Roberts, Joe'