=begin
Given a string S that only contains "I" (increase) or
"D" (decrease), let N = S.length.

Return any permutation A of [0, 1, ..., N] such that for
all i = 0, ..., N-1:

If S[i] == "I", then A[i] < A[i+1]
If S[i] == "D", then A[i] > A[i+1]


Example 1:

Input: "IDID"
Output: [0,4,1,3,2]
Example 2:

Input: "III"
Output: [0,1,2,3]
Example 3

Input: "DDI"
Output: [3,2,0,1]


Note:

1 <= S.length <= 10000
S only contains characters "I" or "D".
=end

# @param {String} s
# @return {Integer[]}

# 1. use prinicple if D then number should be highest unused number becuase then there is always a number to decrease. If I use lowest number so that there is unsed number to increase.
def di_string_number(s)
  n = s.length
  return n if n == 0
  a = [*0..n]
  res = []
  n.times do |i|
    if s[i] == "D"
      res << a.pop
      # res << a[-1]   #FASTER TO USE POP AND SHIFT METHODS
      # a = a[0..-2]
    else
      res << a.shift
      # res << a[0]
      # a = a[1..-1]
    end
  end
  p a[0]
  res << a[0]
  res
end

s = "IDID"
p di_string_number(s)
