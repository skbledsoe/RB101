=begin
problem: write a method that takes three integers (scores), determines the average, and returns the letter value of that grade

input: integers
output: string

notes: 
  values  a..d 10, so no need to check for outside of that range

  A - 90 <= score <= 100
  B - 80 <= score < 90
  C - 70 <= score < 80
  D - 60 <= score < 70
  F - 0 <= score < 60

algo:
  -given three integers
  -initialize average variable and assign to sum of the scores divided by number of scores
  -case statement for average variable

=end

def get_grade(num1, num2, num3)
  average = (num1 + num2 + num3) / 3

  case average
  when 100.. then "A+"
  when 90..100 then "A"
  when 80..90 then "B"
  when 70..80 then "C"
  when 60..70 then "D"
  when 0..60 then "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(101, 100, 110)