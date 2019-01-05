=begin

Given an array of 2n integers, your task is to group these integers 
into n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which 
makes sum of min(ai, bi) for all i from 1 to n as large as possible.

Example 1:
Input: [1,4,3,2]

Output: 4
Explanation: n is 2, and the maximum sum of pairs is 4 = min(1, 2) + 
min(3, 4).
Note:
n is a positive integer, which is in the range of [1, 10000].
All the integers in the array will be in the range of [-10000, 10000].

=end

# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
	arr = []
    nums.sort!
    p nums
    i = 0
    until nums[i+1].nil?
    	if nums[i] < nums[i+1]
    		 arr << nums[i]
    	else
    		arr <<  nums[i+1]
    	end
    	i += 2
    end
    p arr
    return arr.inject(:+)      
end

def array_pair_sum_better()
	nums.sort!
	i = 0 
	sum = 0 
	until nums[i].nil?
		sum += nums[i]
		i += 2
	end
	return sum
end

nums = [2,2,4,4,3,2,6,5,6,7,18, 20]
p array_pair_sum(nums)
