--[[
directions: produce an array containing the intermediate results of applying a binary operator from right → left on an array

inputs:
    arr: a possibly empty array of any combination of values (including the initial value)
    init: an inital value
    op: a binary operation to be applied on the intermediate result and the current element
    
output:
    an array of the intermediate results
    
ex: 
    scanRight({1,3,5,7,9}, 0, function(b, a)
        return a - b
    end)
yields
    {-25, -24, -21, -16, -9, 0}
since
    0 = 0
    0 - 9 = -9
    -9 - 7 = -16
    -16 - 5 = -21
    -21 - 3 = -24
    -24 - 1 = -25
]]

local testCases = require(script.Parent.testgen)

--template
local function scanRight(arr, init, op)
    return {}
end

--testing template
---comment check if two values are equal within a certain error due to how numbers work
local function eq(s1,s2)
    local r = #s1 == #s2
    for i,v in ipairs(s1) do
        r = r and (math.abs(v-s2[i])<1e-4 or v == s2[i])
    end
    return r
end

for input, output in pairs(testCases) do
    local res = scanRight(unpack(input))
    assert(eq(res,output),("failed for ({%s}, %d, %q), expected {%s} got {%s}"):format(
        table.concat(input[1], ", "),
        input[2],
        tostring(input[3]),    
        table.concat(output,", "),
        table.concat(res,", "))
    )
end
