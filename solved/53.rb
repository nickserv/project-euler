class Integer
	def factorial
		if self <= 1
			return 1
		else
			return self * (self-1).factorial
		end
	end
end

def combinations(n,r)
  return n.factorial / (r.factorial * (n-r).factorial )
end

greater = 0
for n in 1..100
  for r in 1..n
    c = combinations(n,r)
    if c > 1000000
      greater += 1
    end
  end
end
puts greater
