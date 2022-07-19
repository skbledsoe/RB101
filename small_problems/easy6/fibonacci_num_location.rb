=begin
problem: write a method that takes an integer and returns the index position of the first fibonacci number that has the number of digits of the given integer

input: integer
output: integer

notes:
  -first fibonacci number has index 1
  -first two numbers in a fibonacci series are both 1, and each subsequent number is the sum of the two previous numbers
  -integer will always be greater than or equal to 2

algo:
  given an integer
    initialize output array
    initialize num = 1
    initialize counter = 1
    append num and sum into output
    begin loop
      num = output[counter - 1] + output[counter]
      append num into output array
      counter += 1
      break if num.digits.size == given integer
    end loop
    return size of output array
    
=end

def find_fibonacci_index_by_length(integer)
  output = []
  num = 1
  counter = 1
  output << num << counter
  loop do
    num = output[counter - 1] + output[counter]
    output << num
    counter += 1
    break if num.digits.size == integer
  end
  output.length
end


p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847