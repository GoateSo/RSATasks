--[[
directions: evaluate an expression in prefix notation given as a string with the following operations or a single digit:

    & <expr>         : which computes the sum of all natural numbers smaller than or equal to <expr>
    - <digit> <expr> : which subtracts an integer in range [0,9] by <expr>
    + <digit> <expr> : which adds an integer in range [0,9] to <expr>

input: an expression in prefix notation as a string

output: an integer which results from evaluating the expression

ex:
    +1-53
yields
    3
since
    5 - 3 = 2
    1 + 2 = 3
]]
local mkTests,testCases = table.unpack(require(script.Parent.testgen))

--template
local function eval(s)
    return 0 
end

--testing template
for _,v in ipairs(mkTests()) do
    local res = eval(v)
end

for input, output in pairs(testCases) do
    local res = eval(input)
    assert(res == output,("failed for %q, expected %s got %s"):format(input,output,res))
end
