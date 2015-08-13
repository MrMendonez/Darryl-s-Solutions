# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
	factors_of_n1 = []
	factors_of_n2 = []
	gcf = 0
	i = 1
	while i <= number1
		if number1 % i == 0
			factors_of_n1 << i
		end
		i += 1
	end
	puts
	puts( "The factors of number1 are #{factors_of_n1}" )
	i = 1
	while i <= number2
		if number2 % i == 0
			factors_of_n2 << i
		end
		i += 1
	end
	puts( "The factors of number2 are #{factors_of_n2}" )
	i = 0
	n = 0
	cf = []
	while i < factors_of_n1.length or i < factors_of_n2.length
		while n < factors_of_n1.length or n < factors_of_n2.length
			if factors_of_n1[i] == factors_of_n2[n]
				cf << factors_of_n1[i]
			end
			n += 1
		end
		n = 0
		i += 1
	end
	puts( "The common factors are #{cf}." )
	gcf = cf[-1]
	puts( "The greatest common factor is #{gcf}." )
	return gcf
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
