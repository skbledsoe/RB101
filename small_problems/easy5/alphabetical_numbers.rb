=begin
problem: wrtie a method that takes an array of integers and returns an array of those integers sorted based on its english word

input: array of integers
output: array of integers

notes:
  integers will be between 0 - 19
  1 = one, 2 = two, 3 = three, etc

algo:
  initialize hash constant, numbers as keys and english words as values
  given an array
  iterate over array using sort by
    pass in the value of hash[current element] as the sorting criteria
    
=end
NUMS_AND_STRINGS = {0=> 'zero', 1 => 'one', 2=>'two', 3=>'three', 4=>'four', 5=>'five', 6=>'six', 7=>'seven', 8=>'eight', 9=>'nine', 10=>'ten', 11=>'eleven', 12=>'twelve', 13=>'thirteen', 14=>'fourteen', 15=>'fifteen', 16=>'sixteen', 17=>'seventeen', 18=>'eighteen', 19=>'nineteen'}

def alphabetic_number_sort(array)
  array.sort_by do |num|
    NUMS_AND_STRINGS[num]
  end
end

p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]