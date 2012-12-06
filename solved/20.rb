class Integer
	def factorial
		if self <= 1
			return 1
		else
			return self * (self-1).factorial
		end
	end
end

fact_100 = 100.factorial
fact_100_s = fact_100.to_s
total = 0
for i in 0..fact_100_s.length-1
	total += fact_100_s[i].to_i
end
puts total
