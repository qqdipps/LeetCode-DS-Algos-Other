def fib(n)
  if n == 0 || n == 1
    return n
  else
    return fib(n - 1) + fib(n - 2)
  end
end

def fib_array(n)
  if n == 0 || n == 1
    return n
  # elsif n == 2   #<= not required, but test cases run faster if pulling out n == 2.
  #   return 1
  end

  fib_arr = [1,1]
  (n - 2).times do
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end
  return fib_arr[-1]
end

def fib_assign(n)
  fib = 0
  a = 1
  b = 0
  n.times do |i|
    fib = a + b
    b = a unless i == 0
    a = fib
  end
  return fib
end

def fib_trick(n)
  return n if n == 0 || n == 1
  a, b = 1, 0
  (n - 1).times do
    a, b = a + b , a   # By updating vars on same line, b is equal to "a" used in expression a + b rather than updated a (a = a + b).
  end
  return a
end

# Test methods
def main(n)
  n.times do |i|
    puts "F(#{i}) = #{fib_trick(i)}"
  end
end

main(7)
