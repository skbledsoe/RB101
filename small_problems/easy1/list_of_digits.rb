def digit_list(num)
  num_array= []
  num_string = num.to_s.split('')
  num_string.map do |num|
    num_array << num.to_i
  end
  num_array
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] 
puts digit_list(444) == [4, 4, 4]   