=begin
problem: write a method that takes an integer (a year) as an argument and returns what century that year is in.

input: integer
output: string

notes:
  new centuries begin in years that end with 01 (1901 - 2000 is the 20th century)
  divide year by 100, drop the decimals, add one

  st: numbers ending in 1, except 11
  nd: numbers ending in 2, except 12
  rd: numbers ending in 3, except 13
  th: every other number

algo:
  given an integer 
    initialize century variable
      divide integer by 100 and add 1, assign to century
      convert to string

  if century is 11, 12, or 13
    century + 'th'
  if century ends with 1
    century + 'st'
  if century ends with 2
    century + 'nd'
  if century ends with 3
    century + 'nd'
  else
    century + 'th'
    

=end

def century(year)
  if year.to_s.end_with?('0')
    century = (year / 100).to_s
  else
    century = ((year / 100) + 1).to_s
  end
  century + century_suffix(century)
end

def century_suffix(century)  
  if century.end_with?('11', '12', '13')
    'th'
  elsif century.end_with?('1')
    'st'
  elsif century.end_with?('2')
    'nd'
  elsif century.end_with?('3')
    'rd'
  else
    'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'