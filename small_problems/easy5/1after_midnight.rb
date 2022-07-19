=begin
problem: write a method that takes an integer that represents minutes before or after midnight, and returns a string that represents the time of day in 24 hour format

input: integer
output: string

notes:
  positive integer is after midnight, negative is before midnight
  cannot use Date or Time class
  1440 minutes in a day
  60 minutes in an hour
  24 hours in a day

algo:
  initialize constant minutes in an hour = 60
  initialize midnight = 0
  given an integer
  if the integer is more than 1440
    assign days and minutes variables to divmod(1440) on integer
    assign hours and minutes variables to divmod(60) on minutes
    return hours and minutes variables in a string
  if integer is less than 1440
    assign hours and minutes to divmod(60) on integer
    return hours and minutes variables in a string
  if integer is less than 0 and more than -1440
    subtract integer from minutes in a day
    call divmod(60) on that result, assign to hours and minutes
    return hours and minutes in a string
  else
    call divmod(minutes in a day) on -integer, assign to _, minutes
    call subtract minutes from minutes in a day
    call divmod(60) on that result, hours and minutes
    return hours and minutes in a string


=end

MINUTES_IN_AN_HOUR = 60
MINUTES_IN_A_DAY = 1440

def time_of_day(after_midnight)
  if after_midnight == 0 || after_midnight == MINUTES_IN_A_DAY
    "00:00"
  elsif after_midnight > MINUTES_IN_A_DAY
    _, minutes = after_midnight.divmod(MINUTES_IN_A_DAY)
    hours, minutes = minutes.divmod(MINUTES_IN_AN_HOUR)
    "#{'%02d' % hours}:#{'%02d' % minutes}"
  elsif after_midnight < MINUTES_IN_A_DAY && after_midnight > 0
    hours, minutes = after_midnight.divmod(MINUTES_IN_AN_HOUR)
    "#{'%02d' % hours}:#{'%02d' % minutes}"
  elsif after_midnight < 0 && after_midnight > -MINUTES_IN_A_DAY
    after_midnight = MINUTES_IN_A_DAY + after_midnight
    hours, minutes = (after_midnight).divmod(MINUTES_IN_AN_HOUR)
    "#{'%02d' % hours}:#{'%02d' % minutes}"
  else
    _, minutes = (-after_midnight).divmod(MINUTES_IN_A_DAY)
    after_midnight = MINUTES_IN_A_DAY - minutes
    hours, minutes = after_midnight.divmod(MINUTES_IN_AN_HOUR)
    "#{'%02d' % hours}:#{'%02d' % minutes}"
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"   #divmod(60) returns 13, 20
p time_of_day(-4231) == "01:29"