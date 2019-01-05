
def reverse_string(s)

	s_pop(s.split(""))
	
end


def s_pop(arr)
	str_rev = ""
	until arr.length == 0	
		str_rev += arr.pop
	end
	return str_rev
end

p reverse_string("asdf")