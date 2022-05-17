def stringy(integer)
  count = 0
  result = []

  integer.times do 
    count += 1
    count.odd? ? result << 1 : result << 0
  end
  
  result.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'