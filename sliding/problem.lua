--[[
directions: Groups elements of the array in fixed size blocks by passing a "sliding window" (https://tinyurl.com/slidinwindow) over them
 
inputs: arr, the array which the sliding window is passed over
        width, the number of elements per group
        step, the distance between the first elements of each group

output: an array of arrays of size `width`, except the last array, which may be smaller

examples:
sliding({1, 2, 3, 4}, 3, 1) → {{1, 2, 3}, {2, 3, 4}}
sliding({1, 2, 3, 4, 5}, 2, 2) → {{1, 2}, {3, 4}, {5}}
sliding({1, 2, 3, 4, 5, 6}, 2, 3) → {{1, 2}, {4, 5}}
]]
local mkTests = require(script.parent.testgen)

--template
local function sliding(arr, width, step)
    return {} 
end

--test template
for _,v in ipairs(mkTests()) do
    local arr, width, step = table.unpack(v)
    local out = sliding(arr, width, step)
    print("passed")
end
