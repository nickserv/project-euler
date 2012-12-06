fibs = [1]
sum = 0

until fibs[-1] > 4000000 do
	if fibs.length == 1
		fibs << 2
	else
		fibs << fibs[-2] + fibs[-1]
	end

	if fibs[-1] % 2 == 0
		sum += fibs[-1]
	end
end

puts sum
