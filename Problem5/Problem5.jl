#Project Euler Problem 5

#Find the smallest possible number that is evenly diviseble by 1 to 20, brute force
n = 20
FirstSolutionTime = Vector{Float64}()
for i=1:1
tic()
while !(n%2==0 && n%3==0 && n%4==0 && n%5==0 && n%6==0 && n%7==0 && n%8==0 && n%9==0 && n%10==0 &&
    n%11==0 && n%12==0 && n%13==0 && n%14==0 && n%15==0 && n%16==0 && n%17==0 && n%18==0
     && n%19==0 && n%20==0)
    n+=20
end
println(n)
push!(FirstSolutionTime,toq())
end
AvgTimeTakenFirstSolution = mean(FirstSolutionTime)
Problem5Answer = n
