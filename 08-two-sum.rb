# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
	i = 0
	n = 0
	zero_sum = []
	while i < nums.length
		if nums[i] + nums[n + 1] == 0
			zero_sum << n + 1
			zero_sum << i
			n += 1
		end
		i += 1
	end
	p( zero_sum )
	if zero_sum == []
		return nil
	else
		return zero_sum
	end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
