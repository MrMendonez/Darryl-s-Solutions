# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
	letters = string.split(//)
	i = 0
	temp_array = []
	while i < letters.length
		if 	letters[i] == "a"
			temp_array << letters[i+1..i+3]
		end
		i += 1
	end
	temp_array = temp_array.flatten
	p( temp_array )
	i = 0
	while i < temp_array.length
		if temp_array[i] == "z"
			p( temp_array[i] )
			return true
		end
		i += 1
	end
	return false
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)