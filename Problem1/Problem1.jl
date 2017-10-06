N = 1000
divisors = [3, 5]
SumElements = Vector{Int64}()

for div in divisors
    #Initial divisor is always included
    val = div
    #Loop untill number is reached
    mult = 2
    while val < N
        push!(SumElements, val)
        val = mult*div
        mult += 1
    end
end

ANS = sum(SumElements)
