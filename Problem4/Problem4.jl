#Project Euler Problem 4
#largest palindrome number made of the product of 2 3-digit numbers

#First solution, simply sift through all combinations...

function ispalindrome(n::Int64)
    n == reverse_int(n)
end

function reverse_int(n::Int64)
    dig = digits(n)
    numdig = length(dig)
    rev = 0
    for i=1:numdig
        rev += dig[i]*10^(numdig-i)
    end
    return rev
end

FirstSolutionTime = Vector{Float64}()
maxpalindrome = 0
palindig = Vector{Int64}(2)
for i = 1:1
    tic()
maxpalindrome = 0
palindig = Vector{Int64}(2)
for n=100:999
    for m=100:999
        val = n*m
        if ispalindrome(val) && val > maxpalindrome
            maxpalindrome = val
            palindig[1] = n
            palindig[2] = m
        end
    end
end
push!(FirstSolutionTime, toq())
end
AvgTimeTakenFirstSolution = mean(FirstSolutionTime)
