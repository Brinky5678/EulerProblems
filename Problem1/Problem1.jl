
#General solution
N = 1000
divisors = [3, 5]
SumElements = Vector{Int64}()

function SumDivisors(N::Int64, Divisors::Vector{Int64})
    sumval = 0
    for i=1:N-1
        if any(rem.(i,Divisors) .== 0)
            sumval += i
        end
    end
    return sumval
end

FirstSolutionTime = Vector{Float64}()
for i=1:1000
    tic()
    Problem1Answer = SumDivisors(N,divisors)
    push!(FirstSolutionTime,toq())
end
AvgTimeTakenFirstSolution = mean(FirstSolutionTime)

#The more standard solution
N = 1000
SecondSolutionTime = Vector{Float64}()
for i=1:1000
    tic()
sumval = 0
for x=1:N-1
    if (x%3 == 0 || x%5 == 0)
        sumval += x
    end
end
push!(SecondSolutionTime,toq())
end
AvgTimeTakenSecondSolution = mean(SecondSolutionTime)
