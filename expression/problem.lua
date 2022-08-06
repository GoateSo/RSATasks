--[[
directions: evaluate an expression in prefix notation given as a string with the following operations or a single digit:

    & <expr>         : which computes the sum of all natural numbers smaller than or equal to <expr>
    - <digit> <expr> : which subtracts <expr> from <digit>
    + <digit> <expr> : which adds a digit to <expr>

    <digit> is an integer in range [0,9]
    <expr> is an expression in prefix notation defined by the rules above

input: an expression in prefix notation as a string

output: an integer which results from evaluating the expression

ex:
    +1-53
results in
    3
since
    first 5 - 3 = 2 is evaluated
    then the result is added to 1: 1 + 2 = 3
]]
local testCases = require(script.Parent.testgen)

--template
local function eval(s)
    return 0 
end

--testing template
for input, output in pairs(testCases) do
    local res = eval(input)
    assert(res == output,("failed for %q, expected %s got %s"):format(input,output,res))
end
