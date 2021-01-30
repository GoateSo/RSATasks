--[[
directions: implement a stateless iterator function which outputs the squares of all even natural numbers up to a given number
 
inputs: limit, a positive integer at which iteration should stop
        cur, a nullable positive integer which represents the previous number 

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
local mkTests, testCases = table.unpack(require(script.Parent.testgen))

--template
local function squares(limit, cur)
    return
end
 
--testing template
for _, lim in ipairs(mkTests()) do
    for i, square in squares, lim do
        assert(i^2 == square and i%2 == 0 and i <= lim, "test failed") 
    end
end

for input, output in ipairs(testCases) do
    local lim,cur = table.unpack(input)
    local r1,r2 = squares(lim,cur)
    local o1,o2 = table.unpack(output)
    assert(r1 == o1 and o2 == r2, ("expected %s and %s for %s and %s, instead got %s and %s"):format(
        o1, o2,
        lim, cur,
        r1, r2
    ))
end
