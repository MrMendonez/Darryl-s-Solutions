# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
	time_conversion = ""
	if minutes < 60
		time_conversion = "0:" + minutes.to_s
	else
		hours = minutes / 60
		modulo_minutes = minutes % 60
		time_conversion = hours.to_s + ":" + modulo_minutes.to_s
		if modulo_minutes.to_s.length == 1
			time_conversion << "0"
		end
	end
	puts( time_conversion )
	return time_conversion
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
