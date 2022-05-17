arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}

arr.each do |elem|
  hsh[elem[0]] = elem[1]
end

p hsh