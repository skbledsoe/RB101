#loan amount 14,000
#APR 3%
#loan duration 72 months (6 years)

#monthly interest rate 
#loan duration in months
#monthly payment

# 
def prompt(message)
  puts message
end

def valid_number?(num)
  num.to_i != 0
end

# def annual_to_month(num)
#   num.to_f / 12
# end

loop do
  prompt("What is the amount of your loan?")
  loan_amount = nil
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  prompt("What is your APR?")
  interest = nil
  loop do
    interest = gets.chomp

    if interest.empty? || interest.to_f < 0
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  prompt("How long, in years, is your loan?")
  duration = nil
  loop do
    
    duration = gets.chomp

    if duration.empty? || duration.to_f < 0
      prompt("Enter a valid number")
    else
      break
    end
  end

  annual_interest = interest.to_f / 100
  monthly_interest = annual_interest / 12
  months = duration.to_i * 12

  monthly_payment = loan_amount.to_f * (monthly_interest / (1 - (1 + monthly_interest)**(-months)))
  
  prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")
  
  prompt("Another calculation?")
  answer = gets.chomp
  
  break unless answer.downcase.include?('y')
end