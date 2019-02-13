# In MATLAB, there is a very useful function called 'reshape', which can reshape a matrix into a new one with different size but keep its original data.
#
# You're given a matrix represented by a two-dimensional array, and two positive integers r and c representing the row number and column number of the wanted reshaped matrix, respectively.
#
# The reshaped matrix need to be filled with all the elements of the original matrix in the same row-traversing order as they were.
#
# If the 'reshape' operation with given parameters is possible and legal, output the new reshaped matrix; Otherwise, output the original matrix.
#
# Example 1:
# Input:
# nums =
# [[1,2],
#  [3,4]]
# r = 1, c = 4
# Output:
# [[1,2,3,4]]
# Explanation:
# The row-traversing of nums is [1,2,3,4]. The new reshaped matrix is a 1 * 4 matrix, fill it row by row by using the previous list.
# Example 2:
# Input:
# nums =
# [[1,2],
#  [3,4]]
# r = 2, c = 4
# Output:
# [[1,2],
#  [3,4]]
# Explanation:
# There is no way to reshape a 2 * 2 matrix to a 2 * 4 matrix. So output the original matrix.
# Note:
# The height and width of the given matrix is in range [1, 100].
# The given r and c are all positive.

# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
  if nums.length * nums[0].length != r * c
    return nums
  end
  reshape = Array.new(r) { Array.new(c,0) }
  nums.flatten!
  r.times do |i|
    c.times do |j|
      reshape[i][j] = nums.shift
    end
  end
  reshape
end

 # This slices a flatted array by the length of the column then turns that slice into an array there fore resizing the 2D.
def faster_matrix_reshape(nums, r, c)
  if nums.length * nums[0].length == r * c
    return nums.flatten.each_slice(c).to_a
  end
  return nums
end
nums = [[1,2,3],[3,4,3]]
c = 2
r = 6
p matrix_reshape(nums, r, c)
