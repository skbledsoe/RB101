=begin
problem: write a method that takes a float representing the degree of an angle and return a string that represents that angle in degrees, minutes, and seconds

input: float
output: string

notes:
  float will be between 0 and 360
  use a degree symbol to rep degrees, ' to rep minutes, and " to rep seconds
  a degree has 60 minutes and a minute has 60 seconds
  result should be within a second or two of test case
  use two digit numbers with leading zeros when formatting minutes and seconds
  constant for degree symbol: DEGREE = "\xC2\xB0"

algo:
  initialize constant minutes = 60
  initialize constant seconds = 60
  given a float
  initialize degree, hour to float.divmod(1)
  initialize minutes to hour * 60
  initialize minutes, seconds to minutes.divmod(1)
  multiply seconds by 60
    
=end
DEGREE = "\xC2\xB0"

def dms(degree)
  degree, hour = degree.divmod(1)
  minutes = hour * 60
  minutes, seconds = minutes.divmod(1)
  seconds *= 60
  # "%(" + degree.to_s + DEGREE + format("%02d'%02d", minutes, seconds) + SECOND_SIGN + ")"
  format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")  #divmod(1) returns 76, 0.73
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")