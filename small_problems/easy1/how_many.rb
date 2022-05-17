vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  result = {}
  
  arr.uniq.each do |vehicle|
    result[vehicle] = arr.count(vehicle)
  end
  
  result.each { |k, v| puts "#{k} => #{v}" }
end

count_occurrences(vehicles)