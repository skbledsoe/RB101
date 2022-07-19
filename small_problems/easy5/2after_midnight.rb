=begin
problem: write two methods that takes a string of time of day in 24-hour format and returns an integer representing how many minutes after midnight, and the other returning how many minutes before midnight

input: string
output: integer

notes:
  24:00 = 0
  should return a value in the range 0..1439
  cannot use Date or Time class
  1440 minutes in a day
  60 minutes in an hour
  24 hours in a day

algo:
AFTER:
  given a string
  split string at :, now have an array of integer strings
  initialize hour variable and assign to the first element in the array.to_i * 60
  initialize minute variable and assign to second element in the array.to_i
  return hour plus minute

BEFORE:
  given a string
  split string at :
  initialize hour variable array[0].to_i * 60
  initialize minute variable array[1].to_i
  return hour minus minute
=end

def before_midnight(time)
  hour, minute = time.split(':').map(&:to_i)
  return 0 if hour == 24
  (hour * 60) - minute
end

def after_midnight(time)
  hour, minute = time.split(':').map(&:to_i)
  return 0 if hour == 24
  (hour * 60) + minute
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0