def sum(integer)
  (1..integer).reduce(:+)
end

def product(integer)
  (1..integer).reduce(:*)
end

puts "Please enter an integer greater than 0:"
integer = gets.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product:"
operation = gets.chomp

if operation == 's'
  total_sum = sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{total_sum}."
elsif operation == 'p'
  total_product = product(integer)
  puts "The product of the integers between 1 and #{integer} is #{total_product}."
end