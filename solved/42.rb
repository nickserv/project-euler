require 'magician'

def triangle n
	n*(n+1)/2
end

words = File.open('data/words.txt').gets.split(',')
words.map! { |word| word[1..-2] }

word_scores = words.map { |word| word.letter_score }
triangle_numbers = []
i = 0
while triangle(i) < word_scores.max
	triangle_numbers << triangle(i)
	i += 1
end

triangle_words = 0
words.each do |word|
	triangle_words += 1 if triangle_numbers.include? word.letter_score
end
puts triangle_words
