--[[
directions: implement an iterator function which outputs the squares of all even natural numbers up to a given number
 
inputs: limit, a positive integer at which iteration should stop
        cur, a nullable positive integer which represents the previous number (initial input always nil, only included because of how lua iterators work)
 
example: 
    for i, s in squares, 8 do
        print(i,s)
    end
results in:
    2   4
    4   16
    6   36
    8   64
]]
local mkTests = require(script.Parent.testgen)

--template
local function squares(limit, cur)
    return
end
 
--testing template
for _, lim in ipairs(mkTests()) do
    for i, square in squares, lim do
        assert(i^2 == square and i%2 == 0, "test failed") 
    end
end

