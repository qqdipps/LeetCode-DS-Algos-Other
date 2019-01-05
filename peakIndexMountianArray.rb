=begin
Let's call an array A a mountain if the following properties hold:

A.length >= 3
There exists some 0 < i < A.length - 1 such that 
A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1]
Given an array that is definitely a mountain, return any i such that 
A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1].
Example 1:

Input: [0,1,0]
Output: 1
Example 2:

Input: [0,2,1,0]
Output: 1
Note:

3 <= A.length <= 10000
0 <= A[i] <= 10^6
A is a mountain, as defined above.

=end

# @param {Integer[]} a
# @return {Integer}
def peak_index_in_mountain_array(a)
	i = 0
	until a[i-1] < a[i] && a[i] >a[i+1]
		i +=  1
	end
	return i    
end

def peak_index_in_mountain_array_binary_number(a)
	return a.index(bin_search_peak(a))
end

def bin_search_peak(a)
	last_index = a.length - 1
	first_index = 0
	mid = a.length / 2
	if a[mid-1] < a[mid] && a[mid] > a[mid + 1]
		return a[mid]
	elsif a[mid - 1] > a[mid]
		return bin_search_peak(a[first_index .. mid])
	else
		return bin_search_peak(a[mid .. last_index])
	end
end


b = [0,1,2,3,4,7,5,4,3,2,1]
c = [3,4,5,1]
a = [40,48,61,75,100,99,98,39,30,10]
p peak_index_in_mountain_array(a)
p peak_index_in_mountain_array_binary_number(a)
