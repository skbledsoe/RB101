def generate_uuid
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

p generate_uuid






# NOTES

# A UUID is a type of identifier. Each UUID consists of 32 hexadecimal characters and is typically broken into 5 sections: 8, 4, 4, 4, 12

# The key to this is having the sections array containing integers representing the # of characters in each section of the UUID
#During iteration through that array, we call the times method in the block on the integer for that iteration which builds up the UUID character by character


