# Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
#
#
#
#
#
#
# Example:
#
# Input: ["Hello", "Alaska", "Dad", "Peace"]
# Output: ["Alaska", "Dad"]
#
#
# Note:
#
# You may use one character in the keyboard more than once.
# You may assume the input string will only contain letters of alphabet.

# @param {String[]} words
# @return {String[]}
def find_words(words)
  ref = ["adfghjkls", "bcmnvxz", "eiopqrtuwy"]
  arr = Array.new
  words.each do |s|
    s_mod = s.downcase.chars.uniq*""
    ref.each do |str|
      if str.count(s_mod) == s_mod.length
        arr << s
      end
    end
  end
  arr
end
words = ["Hello","Klaska","Dad","Peace"]
words = ["Aasdfghjkl","Qwertyuiop","zZxcvbnm", "zxcvbnm", "Qwertyuiop", "Q", "l"]
p find_words(words)
# # p "zxcvbnm".count("bbbbbb")
# # p "bbbbbbbbbfffffffffeeeeeeeeasdfasdfasdfasd".chars.uniq.sort*""
# # p ["b", "c", "m", "n", "v", "x", "z"]*""
#
# def check(str, ref)
#   str = str.downcase
#    p ref
#    i = 1
#   str.each_char do |char|
#     p i
#     p char
#     p ref.include?(char)
#     i += 1
#   end
#   p str.chars.sort!*"" == ref
# end
#
#   check("Qwertyuiop", "eiopqrtuwy")
