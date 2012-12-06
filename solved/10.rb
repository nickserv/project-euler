class Integer
	def prime?
		for i in 2..Math.sqrt(self)
			return false if self % i == 0
		end
		return true
	end
end

sum = 0
for i in 2..2000000
	sum += i if i.prime?
end
puts sum
