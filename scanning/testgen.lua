--[[
Autogenerates test cases for scanning problem

output: arrays of
    arr, a possibly empty array of size in range [0,50] with values in range [-100,100]
    init, a value in range [-1000,1000]
    op, a binary function which acts on 2 numbers and returns a number
]]

local functions = {
    function(a,b)
        return a + b
    end,
    function(a,b)
        return a - b
    end,
    function(a,b)
        return b / a
    end,
    function(a,b)
        return a * b
    end,
    function(a,b)
        return a - b * 2
    end,
    function(a,b)
        return a * a + b * b
    end,
    function(a,b)
        return a % b
    end,
    function(a,b)
        return a/2*(a-1)/b
    end
}

return function(n)
    n = n or 100
    local ret = {}
    for i=1,n do
        local t = {}
        for j=1,math.random(50) do
            t[j] = math.random(-100,100)
        end
        r[i] = {t,math.random(-1000,1000),functions[math.random(#functions)]}
    end
end
