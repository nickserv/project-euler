class Integer
	def palindrome?
		to_s == to_s.reverse
	end
end

sum = 0
(0..1_000_000).each do |n|
	n_binary = n.to_s(2).to_i
	sum += n if n.palindrome? and n_binary.palindrome?
end
puts sum
