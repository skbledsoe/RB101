greetings = { a: "hi" }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting
puts greetings # => modified hash