# Method converts a string of binary to base 10 decimal integer.
#   -> Performs operations at end of string.
#   -> Uses prinicple of 2 ** exp to tally den,
#      where exp equals number of indexes from most right, aka end of string.
# @param string -> bi
# @return integer
def bi_to_den(bi)
  exp, den = 0, 0
  while bi.length > 0
    den += bi[-1].to_i * 2 ** exp
    exp += 1
    bi = bi[0...-1]
  end
  return den
end

# Method converts a base 10 integer to binary string repesentation.
#   -> Finds largest possible power of two from den using log base 2.
#   -> Length of binary string repesentation equals largest possible power of two plus one.
#   -> Fill in rest of string using logic to check if "1" or "0"
# @param integer -> den
# @return string
def den_to_bi(den)
  exp = Math.log2(den).floor
  bi = ""
  (exp + 1).times do |i|
    base = 2 ** (exp - i)
    if base <= den
      bi += "1"
      den -= base
    else
      bi += "0"
    end
  end
  return bi
end

#--------------------------------------------
def num_to_bit(num)
	num.to_s(2)
end

def bit_to_num(bit)
	bit.to_i(2)
end

def bitnums(nums)
	(nums + 1).times do |i|
		puts "#{i} = " + i.to_s(2)
	end
end


def bit_Multiply(bit1, bit2)
	num1 = bit1.to_i(2)
	num2 = bit2.to_i(2)
	(num1 * num2).to_s(2)
end

def bit_divide(bit1, bit2)
	num1 = bit1.to_i(2)
	num2 = bit2.to_i(2)
	num1 % num2 == 0 ? (num1 / num2).to_s(2) : (num1 / num2).to_s(2) + " remainder"

end

def bit_and(bit1, bit2)
	p num1 = bit1.to_i(2)
	p num2 = bit2.to_i(2)
	p (num1 & num2).to_s(2)
	p (num1 & num2)  
end

def bit_or(bit1, bit2)
	p num1 = bit1.to_i(2)
	p num2 = bit2.to_i(2)
	p (num1 | num2).to_s(2)
	p (num1 | num2) 
end 

def right_shift(num, places)
	p num
	p num.to_s(2)
	p shift_bit = (num << places).to_s(2)
	p shift_bit.to_i(2)
end

def left_shift(num, places)
	p num
	p num.to_s(2)
	p shift_bit = (num >> places).to_s(2)
	p shift_bit.to_i(2)
end

def last_bit_equal?(num1, num2)
	p num_to_bit(num1)
	p num_to_bit(num2)
	num1 & 1 == num2 & 1
end
# bitnums(64)
# p bit_Multiply("100100", "11")
# p bit_divide("11001101", "11")
# bit1 = "1011110001"
# bit2 = "1111"
# bit_and(bit1, bit2)
# bit_or(bit1, bit2)
# num = 45
# places = 2
# right_shift(num, places)
# left_shift(num, places)

num1 = 4
num2 = 5
p last_bit_equal?(num1, num2)
