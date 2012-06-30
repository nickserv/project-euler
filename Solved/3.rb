n = 600851475143

class Integer

  def get_factors
    #first half
    factors = []
    for i in 1..self
      if self % i == 0
        if i < self/i
          factors << i
        else break
        end
      end
    end
    #second half
    factors_old = factors.dup
    until factors_old.length == 0
      factors << self/factors_old.pop
    end
    return factors
  end

  def prime?
    return false if self == 0 or self == 1
    for i in 2..self-1
      return false if self % i == 0
    end
    return true
  end

end

factors = n.get_factors
factors = factors[1..-2]
until factors[-1].prime?
  factors.pop
end
puts factors[-1]
