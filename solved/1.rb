sum = 0
i = 0

for i in 0..999
	if i%3==0 or i%5==0
		sum += i
	end
end

puts sum
