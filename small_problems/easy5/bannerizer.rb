=begin
problem: write a method that takes a string and prints it within a box

input: string
output: string in box

notes:
  input will always fit in terminal window

algo:
  create box border
  use interpolation to display lines on top and bottom
  use interpolation to display text in box


  given a string
  initialize top_line variable
    assign it to return value of '-' * string length
  repeat with bottom_line variable
    
=end

def print_in_box(string)
  border = '-' * string.size
  space = ' ' * string.size
  puts "+-#{border}-+"
  puts "| #{space} |"
  puts "| #{string} |"
  puts "| #{space} |"
  puts "+-#{border}-+"
end


print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+


print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+