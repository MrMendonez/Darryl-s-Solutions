# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
	array = string.split(//)
	i = 0
	n = 1
	common_letter = ""
	common_letter_counter = 1
	most_common_letter = ""
	most_common_letter_counter = 0
	while i < array.length
		while n < array.length
			if array[i] == array[i + n]
				common_letter_counter += 1
				common_letter = array[i]
			end
			n += 1
		end
		if common_letter_counter > most_common_letter_counter
			most_common_letter = common_letter
			most_common_letter_counter = common_letter_counter
		end
		common_letter_counter = 1
		n = 1
		i += 1
	end
	result = [most_common_letter, most_common_letter_counter]
	puts
	p result
	return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
