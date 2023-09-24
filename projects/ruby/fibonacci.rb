# Recursive fibonacci solution
def fib(n)
    (n <= 1 ) ? n : fib(n-1) + fib(n-2) # if (n <= 1) is true, return n. Otherwise, return the result of fib(n-1) + fib(n-2) (recursion!)
end

puts fib(1)
puts fib(2)
puts fib(3)
puts fib(5)

puts fib(10)