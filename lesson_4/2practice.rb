ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
array = []
#retrieve values from ages hash
#add the values
#return the sum

ages.collect do |key, value|
  array << value
end

p array.sum