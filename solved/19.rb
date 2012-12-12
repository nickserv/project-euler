require 'date'

count = 0
day = Date.parse '1 Jan 1901'
until day == Date.parse('31 Dec 2000')
	count += 1 if day.mday == 1 and day.sunday?
	day = day.next
end
puts count
