=begin
problem: write a method that takes a positive integer and displays a right triangle whos sides have integer amount of stars

input: integer
output: asterisks

notes:
  bottom row will also have integer amount of stars

algo:
  given an integer
  set variable star to *
  set variable space to " "
  set counter to =
  for each number in one to integer
    print space * integer - 1, star * number
    add one to counter

    

=end

def triangle(integer)
  star = "*"
  space = " "
  counter = 1
  for num in (1..integer) do
    puts space * (integer - counter) + star * num
    counter += 1
  end
end

triangle(5)
triangle(9)