def HelloWorld()
	puts "HelloWorld"
end
 
def factorial(n)
 
	w = n
	i = 1

	(n-1).times do
 		w *= (n-i)
		i += 1	
	end
	puts w 

end

factorial(5)
