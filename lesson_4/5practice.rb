flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.find_index { |i| i.start_with?('Be') }

puts flintstones.index { |name| name[0, 2] == "Be" }