#Project Euler Problem 12
using Primes
#using prime factorization to find the prime factors and their
#multiplicity to speed up brute force search

triangnum(n::Int64) = sum(1:n)

function divisors(num::Int64)
    divlist = collect(factor(num))
    divs = 1
    for i=1:length(divlist)
        divs = divs*(divlist[i][2] + 1)
    end
    return divs
end

n=1
divs = 1
trinum = 1
while divs < 500
    trinum = triangnum(n)
    divs = divisors(trinum)
    n+=1
    #if n%100 == 0
    #    println("$trinum has $divs divisors")
    #end
end
Problem12Answer = trinum
println(Problem12Answer)
