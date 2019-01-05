# The Hamming distance between two integers is the 
# number of positions at which the corresponding bits are different.

# Given two integers x and y, calculate the Hamming distance.



# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
	difference = 0
	x > y ? looping = x.to_s(2).length : looping = y.to_s(2).length
	looping.times do 
		difference += 1 if x & 1 != y & 1 
		x = x >> 1
		y = y >> 1	
	end 
	return difference
end
x = 358
y = 2
p hamming_distance(x,y)



def num_to_bit(num)
	num.to_s(2)
end
p num_to_bit(x)
p num_to_bit(y)

def better_ham(x,y)
	(x^y).to_s(2).count("1")
end

p better_ham(x,y)