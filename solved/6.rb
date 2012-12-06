sum_of_squares = 0
for i in 1..100
	sum_of_squares += i**2
end

sum = 0
square_of_sum = 0
for i in 1..100
	sum += i
end
square_of_sum = sum**2

puts (sum_of_squares - square_of_sum).abs
