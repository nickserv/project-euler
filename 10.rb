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

primes = [2]
until primes[-1] > 2000000
  primes = get_next_prime primes
end
primes.pop
sum = primes.inject(:+)
puts sum
