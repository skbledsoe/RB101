=begin
problem: write a method that takes an integer as the starting number and an integer as the ending number. print all numbers between the two, 'fizz' if the number is divisible by 3, 'buzz' if divisible by 5, and 'fizzbuzz' when divisible by both.

input: integers
output: integers and strings

notes: 
  

algo:
  given two numbers
  from starting number to ending number,
    if number is divisble by both 3 and 5, print fizzbuzz
    if number is divisible by 3, print fizz
    if number is divisible by 5, print buzz
    otherwise print number


=end

def fizzbuzz(num1, num2)
  num1.upto(num2) do |num|
    if num % 3 == 0 && num % 5 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "buzz"
    else
      puts num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz