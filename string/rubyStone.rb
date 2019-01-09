# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    count = 0
    s.each_char {|alpha|count +=1 if j.include?(alpha) }
    count
end

puts num_jewels_in_stones("wersdgn", "aswwwwdddgggg")
