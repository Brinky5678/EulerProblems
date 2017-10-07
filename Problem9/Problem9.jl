#Project Euler Problem 8
#must solve ab = 5e5 - 1e3(a +b) when a < b with both natural numbers


Solution = Vector{Vector{Int64}}()
for b=2:1000
    for a=1:b-1
        equation = a^2 + b^2 - (1000 - a - b)^2
        if equation == 0
            push!(Solution, [a,b])
        end
    end
end
a = Solution[1][1]
b = Solution[1][2]
c = Int64(sqrt(a^2 + b^2))
Problem9answer = a*b*c
println(Problem9answer)
