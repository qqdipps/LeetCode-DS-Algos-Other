# Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
#
# Example 1:
# Input: "Let's take LeetCode contest"
# Output: "s'teL ekat edoCteeL tsetnoc"
# Note: In the string, each word is separated by single space and there will not be any extra space in the string.

# @param {String} s
# @return {String}
def reverse_words(s)
  s = s.split(" ")
  s.length.times do |i|
    (s[i].length/2).times do |j|
       s[i][j], s[i][(s[i].length - 1) - j] = s[i][(s[i].length - 1) - j], s[i][j]
    end
  end
  s*" "
end


s = "lets check Some other s things wow xas"
 p reverse_words(s)
# Notes to self for later:
 # 13. Loop swaps first and last indexes then moves in one index on each side until middle is reached.
 # 14. By declaring on single line indexes can be reassigned to eachother prior to being updated. Alternativly could use a temp var to hold a value then assign on seperate lines.
 # 17. Flattens outer array with space between each element.
