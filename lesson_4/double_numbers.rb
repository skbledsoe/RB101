def double_numbers(numbers, multiplier)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * multiplier

    counter += 1
  end

  doubled_numbers
end

my_nums = [1, 2, 3, 4, 5, 6, 7]

p double_numbers(my_nums, 3)
