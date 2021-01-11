--[[
Challenge 2 - iterators
 
directions: implement an iterator function which outputs the squares of all even natural numbers up to a given number
 
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
--template
local function squares(limit, cur)
    return
end
 
--testing template
local limit = 5
for i, square in squares, 5 do
   assert(i^2 == square and i%2 == 0, "test failed") 
end
