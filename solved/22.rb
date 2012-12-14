require 'magician'

def score(name, index)
	name.letter_score*(index+1)
end

# Get an array of all the names in the file and sort it
data = File.open('data/names.txt').gets.split(',').sort

sum = 0
data.each_with_index do |name, index|
	sum += score(name[1..-2], index)
end
puts sum
