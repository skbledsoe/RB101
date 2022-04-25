# 10.times { puts "The Flinstones Rock!".prepend(" ") }

10.times { |num| puts (" " * num) + "The Flinstones Rock!" }