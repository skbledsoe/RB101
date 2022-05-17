def reverse_words(str)
  arr = str.split

  arr.each do |word|
    word.reverse! if word.length >= 5
  end

  new_str = arr.join(' ')
  new_str
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')