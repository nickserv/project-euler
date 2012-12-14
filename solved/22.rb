class String
	def letter_score
		sum = 0
		downcase.each_char do |c|
			sum += c.ord - 96 #index of 'a' in ascii - 1, so our indexes start at 0
		end
		sum
	end
end

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
