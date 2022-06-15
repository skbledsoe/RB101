=begin
-the user makes a choice
-the computer makes a choice
-the winner is displayed

build a program which takes user input and computer generated input.
determine a winner based on set criteria and return a string
stating who the winner is.

input: a string
output: a string with interpolation to display the winner

algorithm:
  -greet user, ask for name
  -begin outer loop
    -inner loop
      -ask for input from user
      -validate input
        -must equal 'rock', 'paper', 'scissors' else loop again
    -end loop
    -answer choices are stored in a constant
    -input from computer
      -use .sample on answer choices
    -winner is determined
      -if statement
    -display winner
    -play again?
  -end loop
=end

ANSWERS = ['rock', 'paper', 'scissors']

def prompt(msg)
  puts msg
end

def valid_answer?(ans)
  ANSWERS.include?(ans)
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_winner(user, computer)
  if win?(user, computer)
    prompt("You won!")
  elsif win?(computer, user)
    prompt("The computer won!")
  else
    prompt("It's a tie!")
  end
end

prompt('Welcome to RPS!')

prompt("What is your name?")
name = gets.chomp

prompt("Hello, #{name}! Let's begin.")

loop do
  prompt("Choose one: #{ANSWERS.join(', ')}")
  user_answer = nil
  loop do
    user_answer = gets.chomp.downcase

    break if valid_answer?(user_answer)
    prompt("Invalid input, please choose Rock, Paper, or Scissors.")
  end

  comp_answer = ANSWERS.sample

  prompt("You chose #{user_answer}; the computer chose #{comp_answer}.")
  display_winner(user_answer, comp_answer)

  prompt("Would you like to play again?")
  play_again = gets.chomp.downcase

  break unless play_again.start_with?('y')
end

prompt("Thanks for playing, #{name}!")
