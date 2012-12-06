def collatz(n, depth=0)
	depth += 1
	if n == 1
		return depth
	elsif n % 2 == 0
		return collatz(n/2, depth)
	else
		return collatz(3*n + 1, depth)
	end
end

longest = 0
longest_value = 0
for i in 1..999999
	result = collatz i
	if result > longest_value
		longest = i
		longest_value = result
		puts longest
	end
end
