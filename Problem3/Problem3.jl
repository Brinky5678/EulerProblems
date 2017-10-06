#making use of the factorization function in the Primes Package (Boring, but much faster!)
using Primes

Problem3Answer = 0
FirstSolutionTime = Vector{Float64}()
for i=1:1000
    tic()
factors = factor(Vector, 600851475143)
Problem3Answer = factors[length(factors)]
push!(FirstSolutionTime,toq())
end
AvgTimTakenFirstSolution = mean(FirstSolutionTime)

#Second solution, only making use of a prime generating function from the Prime Package
function largest_prime_factor(n::Int64)
    if n < 2
        return []
    end
    maxprimefactor = 2
    for p in primes(Integer(ceil(sqrt(n))))
        if p^2 < n
            if n%p == 0
                maxprimefactor = p
            end
        else
            break
        end
    end
    return maxprimefactor
end

Problem3Answer2 = 0
SecondSolutionTime = Vector{Float64}()
for i=1:1000
    tic()
Problem3Answer2 = largest_prime_factor(600851475143)
push!(SecondSolutionTime,toq())
end
AvgTimeTakenSecondSolution = mean(SecondSolutionTime)
