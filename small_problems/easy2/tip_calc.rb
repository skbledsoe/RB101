puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
tip = gets.to_f

# percentage = tip / 100
total_tip = (tip / 100) * bill
total_bill = bill + total_tip

puts "The tip is #{total_tip} and the bill is #{total_bill}"