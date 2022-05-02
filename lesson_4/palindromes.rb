def palindrome_substrings(str)
  result = []
  substring_arr = substrings(str)
  substring_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end

def substrings(str)
  result = []
  starting_index = 0

  while (starting_index <= str.length - 2)
    num_chars = 2
    while (num_chars <= str.length - starting_index)
      substring = str.slice(starting_index, num_chars)
      result << substring
      num_chars += 1
    end
    starting_index += 1
  end
  result
end

def is_palindrome?(str)
  return str == str.reverse
end


p palindrome_substrings('Sherece Kelly Bledsoe')
p palindrome_substrings('Nicholas Robert Gundlah')
p palindrome_substrings('mom and dad')