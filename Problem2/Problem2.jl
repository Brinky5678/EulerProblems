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

#Fib sequence for only the even numbers
function fibeven(n)
    if n > 0
        if n == 1
            return 2
        elseif n == 2
            return 8
        else
            return 4*fibeven(n-1) + fibeven(n-2)
        end
    else
        error("n must be greater than zero")
    end
end


NaiveTimeSolution = Vector{Float64}()
for i=1:10
tic()
n = 1
sumval = 0
fibval = fib(1)
while fibval < 4e6
    if fibval%2==0
        sumval += fibval
    end
    n+=1
    fibval = fib(n)
end
push!(NaiveTimeSolution, toq())
end
AvgTimeTakenNaiveSolution = mean(NaiveTimeSolution)
println("Done with Naive Version")

#answer = 4613732

#Better solution is possible taking into account that only every other third fibonaci
#Number is even
BetterTimeSolution = Vector{Float64}()
for i=1:1000
tic()
n = 1
sumval2 = 0
fibval2 = fibeven(1)
while fibval2 < 4e6
    sumval2 += fibval2
    n+=1
    fibval2 = fibeven(n)
end
push!(BetterTimeSolution,toq())
end
AvgTimeTakenBetterSolution = mean(BetterTimeSolution)
println("Done With Better Version")
