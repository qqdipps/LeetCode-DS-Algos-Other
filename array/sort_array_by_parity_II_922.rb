#
# Given an array A of non-negative integers, half of the integers in A are odd, and half of the integers are even.
#
# Sort the array so that whenever A[i] is odd, i is odd; and whenever A[i] is even, i is even.
#
# You may return any answer array that satisfies this condition.
#
#
#
# Example 1:
#
# Input: [4,2,5,7]
# Output: [4,5,2,7]
# Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.
#
#
# Note:
#
# 2 <= A.length <= 20000
# A.length % 2 == 0
# 0 <= A[i] <= 1000

# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity_ii(a)   #SLOWER, BUT USES NO EXTRA DS
  (a.length - 1).times do |i|
    if i % 2 == 0
      even_or_odd(i, a, 0)
    else
      even_or_odd(i, a, 1)
   end
   p a
  end
  a
end

def even_or_odd(i, a, check)
  j = 1
  if a[i] % 2 != check
    until a[i + j] % 2 == check
      j += 2
    end
    swap(i,j,a)
  end
  a
end

def swap(i,j,a)
  atemp = a[i]
  a[i] = a[i + j]
  a[i + j] = atemp
  a
end


# a = [1,3,2,4]
# p sort_array_by_parity_ii(a)

# @param {Integer[]} a
# @return {Integer[]}
def stack_sort_array_by_parity_ii(a)    # MUCH FASTER THOUGH USES BUFFER DS
  odd_s = []
  even_s = []
  ans = []
  a.length.times do |i|
    if a[i] % 2 == 0
      even_s << a[i]
    else
      odd_s << a[i]
    end
  end
  until even_s.length == 0
    ans << even_s.pop
    ans << odd_s.pop
  end
  ans
end


a = [2,2,3,3,6,6,7,7]
p stack_sort_array_by_parity_ii(a)
