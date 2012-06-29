class Integer

	def div_by_1st_20?
		for j in 1..20
			if self % j != 0
				return false
			end
		end
		return true
	end

	def factorial
		if self <= 1
			return 1
		else
			return self * (self-1).factorial
		end
	end

end

i = 19*20
until i.div_by_1st_20?
	i += 19*20
	puts i
end
#until i.div_by_1st_20?
	#i += 20
	#puts i
#end
#puts i
