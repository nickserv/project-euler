n = 2**1000
n_s = n.to_s
total = 0
for i in 0..n_s.length-1
	total += n_s[i].to_i
end
puts total
