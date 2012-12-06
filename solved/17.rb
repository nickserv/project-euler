class Integer
	def to_words
		case self
		when 0 then return "zero"
		when 1 then return "one"
		when 2 then return "two"
		when 3 then return "three"
		when 4 then return "four"
		when 5 then return "five"
		when 6 then return "six"
		when 7 then return "seven"
		when 8 then return "eight"
		when 9 then return "nine"
		when 10 then return "ten"
		when 11 then return "eleven"
		when 12 then return "twelve"
		when 13 then return "thirteen"
		when 14 then return "fourteen"
		when 15 then return "fifteen"
		when 16 then return "sixteen"
		when 17 then return "seventeen"
		when 18 then return "eighteen"
		when 19 then return "nineteen"
		when 20..99
			case self
			when 20..29 then prepend = "twenty"
			when 30..39 then prepend = "thirty"
			when 40..49 then prepend = "forty"
			when 50..59 then prepend = "fifty"
			when 60..69 then prepend = "sixty"
			when 70..79 then prepend = "seventy"
			when 80..89 then prepend = "eighty"
			when 90..99 then prepend = "ninety"
			end
			if self % 10 == 0
				return prepend
			else
				return prepend + " " + (self % 10).to_words
			end
		when 100..999
			prepend = (self / 100).to_words
			if self % 100 == 0
				return prepend + " hundred"
			else
				return prepend + " hundred and " + (self % 100).to_words
			end
		when 1000 then return "one thousand"
		end
	end
end

words = ""
for i in 1..1000
	words += i.to_words.gsub(" ","")
end
puts words.length
