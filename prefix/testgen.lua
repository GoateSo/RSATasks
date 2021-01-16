--[[
Autogenerates test cases for prefix problem

output:
	a prefix expression of arbitrary length with an arbitrary combination of the operators listed in problem.lua
]]
local rExpr

local function rDigit()
    return tostring(math.random(0,9))
end

local function rSum()
    return "&".. rExpr()
end

local function rAdd()
    return "+".. rDigit().. rExpr()
end

local function rSub()
    return "-".. rDigit().. rExpr()
end

function rExpr()
    local r = math.random()
    if r < 0.25 then
        return rDigit()
    elseif r >= 0.25 and r < 0.4 then
        return rSum()
    elseif r >= 0.4 and r < 0.7 then
        return rAdd()
    else
        return rSub()		
    end
end

return function(n)
    n = n or 100
    local ret = {}
    for i = 1, n do
        ret[i] = rExpr() 
    end
    return ret
end
