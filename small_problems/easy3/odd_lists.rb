# def oddities(arr)
#   odd_arr = []
#   arr.each do |item|
#     if arr.index(item).even?
#       odd_arr << item
#     end
#   end
#   odd_arr
# end

def oddities(arr)
  odd_arr = []
  count = 0
  while count < arr.size
    odd_arr << arr[count]
    count += 2
  end
  odd_arr
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []