t = Time.new(2022, 05, 13)

puts "What is your age?"
current_age = gets.chomp.to_i 

puts "At what age would you like to retire?"
retirement_age = gets.chomp.to_i

years_away = (retirement_age - current_age)
retirement_year = (t.year + years_away)

puts "It's #{t.year}. You will retire in #{retirement_year}."
puts "You have only #{years_away} years of work to go!"