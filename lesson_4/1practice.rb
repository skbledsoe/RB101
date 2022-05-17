flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

result = flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

p result