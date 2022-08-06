--[[
directions: Groups elements of the array in fixed size blocks by passing a "sliding window" over them, stopping when the number of elements in the collection is smaller than the  width
 
inputs: arr, the array which the sliding window is passed over
        width, the number of elements per group
        step, the distance between the first elements of each group

output: an array of arrays of size `width`

example:
    sliding({1, 2, 3, 4}, 2, 1) → {{1, 2}, {2, 3}, {3, 4}}

    [1  2] 3  4 
     1 [2  3] 4 
     1  2 [3  4]

additional examples:
    sliding({1, 2, 3, 4, 5}, 2, 2) → {{1, 2}, {3, 4}}
    sliding({1, 2, 3, 4, 5, 6}, 2, 3) → {{1, 2}, {4, 5}}
]]
local testCases = require(script.Parent.testgen)

--template
local function sliding(arr, width, step)
    return {} 
end

--test template

--- check whether two arrays of arrays are equal  
local function eq(s1,s2)
    local r = #s1 == #s2
    for i,t in ipairs(s1) do
        r = r and #t == #s2[i]
        for j,v in ipairs(t) do
            r = r and v == s2[i][j]
        end
    end
    return r
end

-- convert array into string for display
local function stringify(r)
    local t = {}
    for i,t2 in ipairs(r) do
         t[i] = "{"..table.concat(t2,", ").."}"
    end
    return "{"..table.concat(t,", ").."}"
end

-- run test cases on your solution
for input, output in pairs(testCases) do
    local res = sliding(unpack(input))
    assert(eq(res,output),("failed for ({%s}, %d, %d), expected %s got %s"):format(
        table.concat(input[1], ", "),
        input[2],
        input[3],
        stringify(output),
        stringify(res))
    )
end
