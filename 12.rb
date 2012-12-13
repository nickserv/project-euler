require 'magician'

def triangle n
	n*(n+1)/2
end

i = 1
i += 1 until triangle(i).factors.length > 500

puts triangle i
