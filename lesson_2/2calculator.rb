=begin
build a command line calculator that does the following:
  -asks for two numbers
  -asks for the type of operation to perform: add, subtract, multiply, divide
  -displays the result
input: two numbers
output: result of two numbers

Algorithm:
  -ask for first number
    -validate
  -ask for second number
    -validate
  -ask for operation
    -validate input
  -perform chosen operation on numbers
  -return result
  -play again?
=end
require 'yaml'
MESSAGES = YAML.load_file('calc_msg.yml')

def prompt(msg)
  puts msg.to_s
end

def valid_num?(num)
  num.is_a? Integer
end

def chosen_operator(op)
  case op
  when '1'
    'Addition'
  when '2'
    'Subtraction'
  when '3'
    'Multiplication'
  when '4'
    'Division'
  end
end

loop do
  prompt("Give me the first number:")
  num1 = nil
  loop do
    num1 = gets.chomp.to_i

    if valid_num?(num1)
      break
    else
      prompt(MESSAGES['invalid_num'])
    end
  end

  prompt("Give me the second number:")
  num2 = nil
  loop do
    num2 = gets.chomp.to_i

    if valid_num?(num2)
      break
    else
      pprompt(MESSAGES['invalid_num'])
    end
  end

  operator_prompt = <<-MSG
  Select an operation:
  1) Addition
  2) Subtraction
  3) Multiplication
  4) Division
  MSG

  prompt(operator_prompt)
  operator = nil
  loop do
    operator = gets.chomp

    if ('1'..'4').include?(operator)
      break
    else
      prompt(MESSAGES['invalid_op'])
    end
  end

  result =  case operator
            when '1'
              num1.to_i + num2.to_i
            when '2'
              num1.to_i - num2.to_i
            when '3'
              num1.to_i * num2.to_i
            when '4'
              num1.to_f / num2.to_f
            end

  prompt("You chose #{chosen_operator(operator)}. Your result is #{result}")

  prompt("Play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
