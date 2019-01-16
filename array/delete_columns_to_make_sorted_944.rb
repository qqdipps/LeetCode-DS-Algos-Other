# We are given an array A of N lowercase letter strings, all of the same length.
#
# Now, we may choose any set of deletion indices, and for each string, we delete all the characters in those indices.
#
# For example, if we have an array A = ["abcdef","uvwxyz"] and deletion indices {0, 2, 3}, then the final array after deletions is ["bef", "vyz"], and the remaining columns of A are ["b","v"], ["e","y"], and ["f","z"].  (Formally, the c-th column is [A[0][c], A[1][c], ..., A[A.length-1][c]].)
#
# Suppose we chose a set of deletion indices D such that after deletions, each remaining column in A is in non-decreasing sorted order.
#
# Return the minimum possible value of D.length.

a = ["abc", "bcd", "afg"]
a = ["www", "xxx", "yyy"]
a = ["rrjk","furt","guzm"]

# @param {String[]} a
# @return {Integer}

# 1. Break strings to array of chars
# 2. Access char columns and compare next row of char
# 3. if 1st char is > than 2nd char, increment delete count, break loop
# 4. cont check next column
# 5. return delete count

def min_deletion_size(a)
  d = 0
  return 0 if !a[0] || a[0].length == 1
  columns = a[0].length
  rows = a.length
  a.map!{ |str|  str = str.chars}
  (columns).times do |j|
    (rows - 1).times do |i|
       # p "#{a[i][j]}  >  #{a[i + 1][j]} ..... #{a[i][j] > a[i + 1][j]}"
      if a[i][j] > a[i + 1][j]
        d += 1
        break
      end
    end
  end
  d
end

def faster
  a.map!(&:chars).transpose.count { |row| row.sort != row }
end
# &Symbol#to_proc returns a proc that responds to the symbol’s method.

# p  a = ["rrjk", "furt", "guzm"]
# p a.map!(&:length)  =>
# [4, 4, 4]

# a = ["rrjk", "furt", "guzm"]
# a.map!(&:length) => [["r", "r", "j", "k"], ["f", "u", "r", "t"], ["g", "u", "z", "m"]]

#  # transpose switches rows and columns in 2D array a = [[1,2], [3,4], [5,6]]
# a.transpose   #=> [[1, 3, 5], [2, 4, 6]]

# p min_deletion_size(a)
