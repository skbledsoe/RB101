def selected_vowels(str)
  selected_chars = ''
  counter = 0

  loop do
    current_char = str[counter]

    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end

    counter += 1
    break if counter == str.size
  end

  puts selected_chars
end


selected_vowels('Sherece Bledsoe')
selected_vowels('I want to go to Paris')