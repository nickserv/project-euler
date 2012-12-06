require 'magician'

def triangle n
	(1..n).inject :+
end

n = 1
i = 1
until n.factors.length > 5_000
	n = triangle i
	i += 1
end
puts n
