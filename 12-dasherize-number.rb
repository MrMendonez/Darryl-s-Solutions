# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
	numstring = num.to_s
	i = 0
	dash_counter = 0
	while i < num.to_s.size + dash_counter
		if numstring[i].to_i % 2 != 0
			# For first digit
			if  i == 0
				numstring[i] = ( numstring[i].to_s + "-" )
				dash_counter += 1
				puts( "if executed")
			# For last digit
			elsif numstring[i + 1] == nil and numstring[i - 1] == "-"
				numstring[i] = ( numstring[i].to_s )
				dash_counter += 1
				puts ( "elsif1 executed" )
				break
			elsif numstring[i + 1] == nil
				numstring[i] = ( "-" + numstring[i].to_s )
				dash_counter += 1
				puts ( "elsif2 executed" )
				break
			# For middle digits
			else
				if numstring[i - 1] == "-"
					# If character before it is already a "-"
					if numstring[i + 1] != "-"
						numstring[i] = ( numstring[i].to_s + "-" )
						dash_counter += 1
						puts( "else if if executed" )
					end
				elsif numstring[i + 1] == ( numstring[i].to_i % 2 != 0 )
					# if character after it is an odd number
					numstring[i] = ( numstring[i].to_s + "-" )
					dash_counter += 1
					puts( "else elseif executed" )
				else
					# if "-" are needed on both sides
					numstring[i] = ( "-" + numstring[i].to_s + "-" )
					dash_counter += 2
					puts( "else else executed" )
				end
			end
		end
		i += 1
	end
	numstring = numstring.to_s
	p numstring
	return numstring
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
puts
puts( "--------------------" )
puts( "Darryl's Difficult Test:" )
puts(
  'dasherize_number(23678034669) == "2-3-6-7-80-3-466-9": ' +
  (dasherize_number(23678034669) == '2-3-6-7-80-3-466-9').to_s
)