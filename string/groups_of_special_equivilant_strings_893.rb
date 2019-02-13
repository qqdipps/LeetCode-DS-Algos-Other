# 893. Groups of Special-Equivalent Strings
# Easy
#
# 114
#
# 371
#
# Favorite
#
# Share
# You are given an array A of strings.
#
# Two strings S and T are special-equivalent (SE) if after any number of moves, S == T.
#
# A move consists of choosing two indices i and j with i % 2 == j % 2 , and swapping S[i] with S[j].
#
# Now, a group of special-equivalent strings from A is a non-empty subset S of A such that any string not in S is not special-equivalent with any string in S.
#
# Return the number of groups of special-equivalent strings from A.
#
#
#
# Example 1:
#
# Input: ["a","b","c","a","c","c"]
# Output: 3
# Explanation: 3 groups ["a","a"], ["b"], ["c","c","c"]
# Example 2:
#
# Input: ["aa","bb","ab","ba"]
# Output: 4
# Explanation: 4 groups ["aa"], ["bb"], ["ab"], ["ba"]
# Example 3:
#
# Input: ["abc","acb","bac","bca","cab","cba"]
# Output: 3
# Explanation: 3 groups ["abc","cba"], ["acb","bca"], ["bac","cab"]
# Example 4:
#
# Input: ["abcd","cdab","adcb","cbad"]
# Output: 1
# Explanation: 1 group ["abcd","cdab","adcb","cbad"]
#
#
# Note:
#
# 1 <= A.length <= 1000
# 1 <= A[i].length <= 20
# All A[i] have the same length.
# All A[i] consist of only lowercase letters.


# inother words if 2 strings T and S are SE if the odd indices of T contain odd indices of S AND even indices of T contain even indices of S.

def count_SE_groups(a)
  return 1 if a.length == 1
  record = Hash.new
  len_elem = a[0].length
  if len_elem > 1
    a.length.times do |i|
      atemp = Array.new(2,"")
      len_elem.times do |j|
        atemp[j % 2] += a[i][j]
      end
    atemp = atemp[0].chars.sort!*"" + atemp[1].chars.sort!*""
    a[i] = atemp
    end
  end
  p a.sort!
  count_of_groups = 0
  a.length.times do |i|
    count_of_groups += 1 if a[i + 1] != a[i]
  end
  count_of_groups
end
a = ["aced", "edac", "qwer", "rewq"]
a = ["a","b","c","a","c","c"]
a = ["acse","bece","cede","acse","scae","cebe"]
p count_SE_groups(a)
