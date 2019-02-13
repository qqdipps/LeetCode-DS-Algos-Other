# Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.
#
#
#
# Example 1:
#
# Input: [-4,-1,0,3,10]
# Output: [0,1,9,16,100]
# Example 2:
#
# Input: [-7,-3,2,3,11]
# Output: [4,9,9,49,121]
#
#
# Note:
#
# 1 <= A.length <= 10000
# -10000 <= A[i] <= 10000
# A is sorted in non-decreasing order.

def sq_arr(a)
  # require 'debug'
  a.map! { |x| x**2 }
  j = (a.length - 1)
  return a if j == 0
  while a[0] >= a[1] && j >= 0
    p j
    if a[0] > a[j]
      a.insert(j, a.shift)
    else
      j -= 1
    end
  end
  a
end

# a = [-23, 13]
# a = []
a = [-3,-3,-2,-2,1,1,2]
p sq_arr(a)
