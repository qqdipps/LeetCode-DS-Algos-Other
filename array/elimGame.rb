# @param {Integer} n
# @return {Integer}
def last_remaining(n)
   a = [*1..n+2]
   b = []
   counter = 1
   until a.length == 1	
	   (a.length/2).times do |i|
	   		a_index = counter % 2 == 0 ? i * 2 : (i + 1) * 2
	   		b << a[a_index]
   		end
   		counter += 1
   		a = b
	   	b = []
	   	p a
   	end
end

last_remaining(19)
