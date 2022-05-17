a = %w(a b c d e)

puts a.fetch(7) #error
puts a.fetch(7, 'beats me') #beats me
puts a.fetch(7) { |i| i**2 } #7**2 => 49