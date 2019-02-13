#
# def reverse_string(s)
#
# 	s_pop(s.split(""))
#
# end
#
#
# def s_pop(arr)
# 	str_rev = ""
# 	until arr.length == 0
# 		str_rev += arr.pop
# 	end
# 	return str_rev
# end



# @param {String} s  ******* 1/2 as many steps!!!!!!!!! *********
# @return {String}
def reverse_string(s)
  s = s.chars
  str_len = s.length
  (str_len/2).times do |i|
    s[i], s[(str_len - i) - 1] = s[(str_len - i) - 1],  s[i]
  end
  s
end
p reverse_string("asdf")
