require 'magician'

# Borrowed from kristenmills/Project-Euler
class Integer
	def num_divisors primes
		count = 1
		remaining = self
		primes.each do |prime|
			divisions = 1
			while remaining % prime == 0
				divisions += 1
				remaining /= prime
			end
			count *= divisions
			break if remaining == 1
		end
		count
	end
end

def triangle n
	n*(n+1)/2
end

primes = Math.primes 100
i = 1

i += 1 until triangle(i).num_divisors(primes) > 500
puts triangle i
