#project Euler Problem 10
using Primes

pval = primes(2000000)
Problem10Answer = sum(pval)
println(Problem10Answer)
