sum = 0
for i in 1..1000
  sum += i**i
end
puts sum.to_s[-10..-1]
