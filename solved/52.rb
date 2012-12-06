def get_id n
	n.to_s.chars.sort.join.to_i
end

def same_digits? array
	array.map do |item|
		get_id item
	end.uniq.count == 1
end

n = 1
until same_digits? [n, n*2, n*3, n*4, n*5, n*6] do
	n += 1
end
puts n
