--[[
directions: Groups elements of the array in fixed size blocks by passing a "sliding window" over them, stopping when reaching the end of the collection 
            (when all elements are exhausted)
 
inputs: arr, the array which the sliding window is passed over
        width, the number of elements per group
        step, the distance between the first elements of each group

output: an array of arrays of size `width`, except the last array, which may be smaller

example:
    sliding({1, 2, 3, 4}, 2, 1) → {{1, 2}, {2, 3}, {3, 4}}
    +--------------+
    |[1  2]| 3 | 4 | 
    |--------------|
    | 1 |[2  3]| 4 |
    |--------------|
    | 1 | 2 |[3  4]|
    +--------------+

additional examples:
    sliding({1, 2, 3, 4, 5}, 2, 2) → {{1, 2}, {3, 4}, {5}}
    sliding({1, 2, 3, 4, 5, 6}, 2, 3) → {{1, 2}, {4, 5}}
]]
local mkTests = require(script.Parent.testgen)

--template
local function sliding(arr, width, step)
    return {} 
end

--test template
for _,v in ipairs(mkTests()) do
    local arr, width, step = table.unpack(v)
    local out = sliding(arr, width, step)
    --...
end
