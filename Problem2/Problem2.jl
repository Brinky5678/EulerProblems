### Problem 2

#Create recursive fibonaci function (naiive solution)
function fib(n::Int64)
    if n > 0
        if n == 1
            return 1
        elseif n == 2
            return 2
        else
            return fib(n-1) + fib(n-2)
        end
    else
        error("n must be greater than zero")
    end
end

n = 1
sumval = 0
fibval = fib(1)
while fibval < 4e6
    if iseven(fibval)
        sumval += fibval
    end
    n+=1
    fibval = fib(n)
end

#answer = 4613732

#Better solution is possible taking into account that only every other third fibonaci
#Number is even
