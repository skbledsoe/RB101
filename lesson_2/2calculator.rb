def prompt(message)
  puts message
end

def valid_number?(num)
  num.to_i != 0
end

loop do
#ask the user for the first number
  num1 = nil
  loop do
    prompt("Give me the first number")
    num1 = gets.chomp

    break if valid_number?(num1)
    prompt("Not a valid number, please try again.")
  end
#ask the user for the second number
  num2 = nil
  loop do
    prompt("Give me the second number")
    num2 = gets.chomp

    break if valid_number?(num2)
    prompt("Not a valid number, please try again.")
  end
#ask what operation to perform
  operator = nil
  loop do
    prompt("Choose an operation: 1. add, 2. subtract, 3. multiply, 4.divide")
    operator = gets.chomp

    break if %w(1 2 3 4).include?(operator)
    prompt("Invalid input, please choose 1, 2, 3, or 4.")
  end

    result = case operator
    when '1'
      num1.to_i + num2.to_i
    when '2'
      num1.to_i - num2.to_i
    when '3'
      num1.to_i * num2.to_i
    when '4'
      num1.to_f / num2.to_f
    end
#display result
    prompt("Your result is #{result}")

    prompt("Would you like to go again?")
    go_again = gets.chomp
    break unless go_again.include?('y')
end