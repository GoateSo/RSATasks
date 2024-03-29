--[[
directions: generate a list of approixmations for the square root of a number given an inital approximation until the approximations are within a certain bound

inputs: num, a positive integer to get the square root of
        approx, the inital approximation (positive integer)
        bound, an acceptable error from the actual root

output: approxs, a list of approximations of the square root

hint: you can generate a better approximation using the formula:
      next = (approx + (num / approx)) / 2

example: 
    approxSqrts(3, 1, 1e-6)

yields
    {1, 2, 1.75, 1.7321428571428572, 1.7320508100147274}
since
    1.7320508100147274 is the first approximation within bounds:
    abs(1.7320508100147274² - 3) < 1e-6
    
    (NOTE: The comparison should be whether abs(approx² - n) < bound, not whether abs(approx - math.sqrt(n)) < bound)
    the solution shouldn't need to use math.sqrt
]]
local testCases = require(script.Parent.testgen)

--template
local function approxSqrts(num, approx, bound)
    return {}
end
 
--testing 
for input, output in pairs(testCases) do
    local num,approx,bound = table.unpack(input)
    local approxs = approxSqrts(num,approx,bound)
    assert(#output == #approxs, ("expected %d approxmations, got %d instead"):format(#output,#approxs))
    for i, v in ipairs(output) do
        assert(math.abs(v - approxs[i]) < 1e-8, ("expected %f for approximation #%d, got %d instead"):format(v,i,approxs[i]))
    end
end
