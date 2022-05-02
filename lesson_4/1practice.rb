flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flinstones_hash = {}
flintstones.each_with_index do |name, index|
  flinstones_hash[name] = index
end

puts flinstones_hash