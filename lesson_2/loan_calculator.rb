=begin
  Build a loan calculator that takes the loan amount, the APR, and
  loan duration and calculates the monthly interest rate, loan
  duration in months, and the monthly payment.
input: float
output: float

Algorithm:
  - get the loan amount from user
    -validate input
      -positive number, no non-numeric characters
  -get APR from user
    -validate input
      -positive number, float, no non-numeric characters
    -convert to monthly interest rate (MIR)
  -get loan duration in years from user
    -validate input
      -positive number, float, no non-numeric characters
    -convert to loan duration in months
  -use formula to find monthly payment, store in result variable
    -loan_amount * (MIR / (1 - (1 + MIR)**(-month_duration)))
  -return result
=end

def prompt(msg)
  puts msg.to_s
end

def valid_num?(num)
  num = num.gsub(/[^0-9]/, '')
  num.to_i.positive? && ( num.to_i.to_s == num || num.to_f.to_s == num)
end

def valid_float?(num)
  num = num.gsub(/[^0-9]/, '')
  (num.to_i.positive? || num.to_f == 0.0) && (num.to_i.to_s == num || num.to_f.to_s == num)
end

def annual_to_monthly(percent)
  percent = percent.to_f / 100
  percent /=  12
end

def years_to_months(year)
  year = year.to_f * 12
end

prompt("Welcome to the Loan Calculator!")
prompt("What is your name?")
name = nil
loop do
  name = gets.chomp 

  break unless name.empty?
  prompt("Please enter your name!")
end

prompt("Hi, #{name}! Let's get to calculating...")

loop do
  loan_amount = nil
  loop do
    prompt("What is your loan amount?")
    loan_amount = gets.chomp

    if valid_num?(loan_amount)
      break
    else
      prompt("Invalid input, please try again.")
    end
  end

  apr = nil
  loop do
    prompt("What is your APR? (1 for 1%, 2 for 2%, etc)")
    apr = gets.chomp

    if valid_float?(apr)
      break
    else
      prompt("Invalid input, please try again.")
    end
  end

  loan_years = nil
  loop do
    prompt("How long, in years, is your loan?")
    loan_years = gets.chomp

    if valid_float?(loan_years)
      break
    else
      prompt("Invalid input, please try again.")
    end
  end

  monthly_interest = annual_to_monthly(apr)
  loan_months = years_to_months(loan_years)
  result = loan_amount.to_f * (monthly_interest / 
            (1 - (1 + monthly_interest)**(-loan_months)))

  prompt("#{name}, your monthly payment is $#{format('%.2f', result)}.")
  prompt("Would you like to make another calculation?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thanks for using the loan calculator, #{name}!")
