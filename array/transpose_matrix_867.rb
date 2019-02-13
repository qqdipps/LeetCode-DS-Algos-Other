#
# Given a matrix A, return the transpose of A.
#
# The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row and column indices of the matrix.
#
#
#
# Example 1:
#
# Input: [[1,2,3],[4,5,6],[7,8,9]]
# Output: [[1,4,7],[2,5,8],[3,6,9]]
# Example 2:
#
# Input: [[1,2,3],[4,5,6]]
# Output: [[1,4],[2,5],[3,6]]
#
#
# Note:
#
# 1 <= A.length <= 1000
# 1 <= A[0].length <= 1000

# Can use transpose method or implete own.
# Can't use inplace transpose as matrix may not be square, though for improvement could optimize for square inplace transpose around main diagonal.
def transpose(a)
  a_row = a.length
  a_col = a[0].length
  n_col = a_row
  n_row = a_col
  n = Array.new(n_row){Array.new(n_col, 0)}
  p n
  a_row.times do |i|
    a_col.times do |j|
      n[j][i] = a[i][j]
    end
  end
  n
end

a = [[1,2,3],[4,5,6]]
p transpose(a)
