def prompt(msg)
  puts msg.to_s
end

prompt "Please write word or multiple words:"
words = gets.chomp

prompt "There are #{words.delete(' ').length} characters in '#{words}'."