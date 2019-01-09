# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
	s = s.chars.sort.join
    t = t.chars.sort.join
    t.length.times do |i|
        if t[i] != s[i]
            p t
            p s
            return t[i]
        end
    end
end
s = "qwertyuioplkjhgfdsazxcvbnnm"
t = "poiuytrewqasdfghjklmnbgvcxz"

p find_the_difference(s,t)
