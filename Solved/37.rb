def get_next_prime primes=[]
  if primes.length == 0
    return [2]
  else
    i = primes[-1]
    while true
      possible_prime = true
      if i == 2
        i += 1
      else
        i += 2
      end
      for prime in primes
        if i % prime == 0
          possible_prime = false
          break
        end
      end
      if possible_prime
        primes << i
        return primes
      end
    end
  end
end

def truncatable? primes
	#check start truncating
	prime = primes[-1]
	until prime == 0
		prime = prime.to_s[1..-1].to_i
		if prime != 0
			if not primes.include? prime
				return false
			end
		end
	end
	#check end truncating
	prime = primes[-1]
	until prime == 0
		prime = prime.to_s[0..-2].to_i
		if prime != 0
			if not primes.include? prime
				return false
			end
		end
	end
	#success
	return true
end

primes = [2,3,5,7]
found = 0
sum = 0
until found == 11
	primes = get_next_prime primes
	if truncatable? primes
		sum += primes[-1]
		found += 1
		puts "found #{primes[-1].to_s} (#{found}/11)"
	end
end
puts "sum: #{sum}"
