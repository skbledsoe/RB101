arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

#return a new array with same sub arrays
#sub arrays are ordered logically
#only odd numbers are considered when ordered

result = arr.sort_by do |item|
  item.select do |num|
    num.odd?
  end
end

p result