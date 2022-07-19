=begin
problem: create a program that gets user input for a noun, a verb, an adverb, and an adjective and injects those variables into a story.

input: user input strings
output: string

notes: 
  

algo:
  create prompt method that takes item as argument
    when item is noun, puts statement for noun
    repeat for each variable
  create mad lib method that takes noun, verb, adjective, adverb as argument
    return string with arguments interpolated
  get user input for:
    noun variable
    verb variable
    adjective variable
    adverb variable
  call mad lib method and pass in user variables

=end

def prompt(item)
  case item
  when 'noun'       then puts 'Enter a noun:'
  when 'verb'       then puts 'Enter a verb:'
  when 'adjective'  then puts 'Enter an adjective:'
  when 'adverb'     then puts 'Enter an adverb:'
  end
end

def mad_lib(noun, verb, adjective, adverb)
  one = "Do you #{verb} your #{adjective} #{noun} #{adverb}?"
  two =  "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
  three = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."
  [one, two, three].sample
end

prompt('noun')
noun = gets.chomp 
prompt('verb')
verb = gets.chomp 
prompt('adjective')
adjective = gets.chomp 
prompt('adverb')
adverb = gets.chomp

p mad_lib(noun, verb, adjective, adverb)