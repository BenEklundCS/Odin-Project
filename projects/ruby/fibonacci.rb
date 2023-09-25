# Recursive fibonacci solution
def fib(n)
    # if (n <= 1) is true, return n. Otherwise, return the result of fib(n-1) + fib(n-2) (recursion!)
    (n <= 1 ) ? n : fib(n-1) + fib(n-2)
end

puts fib(1) # --> 1
puts fib(2) # --> 1
puts fib(3) # --> 2
puts fib(5) # --> 5
puts fib(10) # --> 55