# We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)
#
# A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.
#
# Return a list of all uncommon words.
#
# You may return the list in any order.
#
#
#
# Example 1:
#
# Input: A = "this apple is sweet", B = "this apple is sour"
# Output: ["sweet","sour"]
# Example 2:
#
# Input: A = "apple apple", B = "banana"
# Output: ["banana"]
#
#
# Note:
#
# 0 <= A.length <= 200
# 0 <= B.length <= 200
# A and B both contain only spaces and lowercase letters.

# @param {String} a
# @param {String} b
# @return {String[]}
def uncommon_from_sentences(a, b)
  dict = Hash.new(0)
  a += " " + b
  a.split(" ").each do |char|
    dict[char] += 1
  end
  get_keys_for_1(dict.flatten)

end

def get_keys_for_1(dict_arr, res = Array.new)
  if dict_arr.index(1)
    res << dict_arr[dict_arr.index(1) - 1]
    return get_keys_for_1(dict_arr[(dict_arr.index(1) + 1)..-1] , res)
  end
  res
end


a = "this apple is"
b = "this apple is"
p uncommon_from_sentences(a,b)
