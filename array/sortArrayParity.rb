
# Given an array A of non-negative integers, return an array 
# consisting of all the even elements of A, followed by all the odd elements of A.

def sort_array_by_parity(a)
	b = a.select {|num| num % 2 == 0 }
    b += a.select {|num| num % 2 == 1 }
    return b
end

a = [5, 4, 3, 2, 1]
p sort_array_by_parity(a)
