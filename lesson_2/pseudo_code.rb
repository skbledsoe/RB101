numbers = [4, 2, 3, 4, 5, 3, 8, 1]
value = nil

numbers.each do |i|
  value = numbers[0]
  if i >= value
    next
  else
    value = i  
  end
end

Kernel.puts(value)