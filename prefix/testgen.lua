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



return { function(n)
    n = n or 100
    local ret = {}
    for i = 1, n do
        ret[i] = rExpr() 
    end
    return ret
end, {
    ["1"] = 1;
    ["5"] = 5;
    ["2"] = 2;
    ["&3"] = 6;
    ["-84"] = 4;
    ["+85"] = 13;
    ["+29"] = 11;
    ["+77"] = 14;
    ["-77"] = 0;
    ["-12"] = -1;
    ["+03"] = 3;
    ["-75"] = 2;
    ["+70"] = 7;
    ["+62"] = 8;
    ["+07"] = 7;
    ["-00"] = 0;
    ["+95"] = 14;
    ["-09"] = -9;
    ["+59"] = 14;
    ["+53"] = 8;
    ["-18"] = -7;
    ["+94"] = 13;
    ["-28"] = -6;
    ["+4&1"] = 5;
    ["-6&6"] = -15;
    ["&-08"] = 0;
    ["&+24"] = 21;
    ["-0-08"] = 8;
    ["+7-33"] = 7;
    ["-2-20"] = 0;
    ["-3+18"] = -6;
    ["+2-47"] = -1;
    ["+3+00"] = 3;
    ["+6&&0"] = 6;
    ["+8-58"] = 5;
    ["-5+2&3"] = -3;
    ["&-4-59"] = 36;
    ["&-5-91"] = 0;
    ["+3+0-96"] = 6;
    ["+9+5-60"] = 20;
    ["&-0+0&5"] = 0;
    ["-3+0-53"] = 1;
    ["+5-0-19"] = 13;
    ["+4-7-79"] = 13;
    ["+5&-4-71"] = 5;
    ["&+4&&+65"] = 2454220;
    ["&-0+3+80"] = 0;
    ["-0-2-9&9"] = -38;
    ["-6-5+8+25"] = 16;
    ["-6-4+1+68"] = 17;
    ["+0-7&+2&4"] = -71;
    ["+3+4+6-79"] = 11;
    ["-3-6&&-08"] = -3;
    ["+9+2+9+53"] = 28;
    ["+2-2-8+67"] = 9;
    ["-8+7+5+69"] = -19;
    ["&-6+1-3+72"] = 66;
    ["-9+0-1-2+75"] = -2;
    ["&&+2+9+1+91"] = 32131;
    ["-3+8-4+6-69"] = -6;
    ["+8&-7-8+2&0"] = 9;
    ["+2&-3-7+4-53"] = 5;
    ["+2+7-5&+7-08"] = 14;
    ["&-1-4+3+1-20"] = 6;
    ["+8+0+5+1-9-77"] = 23;
    ["+6&-3-8&-2+74"] = 6;
    ["-9-6+7-1-2+6-82"] = 21;
    ["-4-2&-5-9+9+1-14"] = 8;
    ["-7+7-7-7&+6-7-85"] = -55;
    ["+6+3+1-4-5+7+7+85"] = 36;
    ["+7+0-3+8-7-3-8-58"] = -13;
    ["+9+3+2-8+1+2&+8&3"] = -86;
    ["-7+5+7+0+9-6&-3-34"] = -10;
    ["+9-6+3-6+1+0+0+5+69"] = 27;
    ["-5&+4&-3+5&-1-4-9+26"] = -5;
    ["+6+3-8+8+7-1+0-1-5+72"] = 6;
    ["+2+3+4-3+3+4+1&-7&-37"] = -24;
    ["-3-1-3+7-8-9+1-4&+1&&-35"] = -5;
    ["&+8+7&-0&+9&&&+1-9-4+8-09"] = 120;
    ["+5+7-0-1&-9&-6+6-9+5+2&+71"] = 11;
    ["-3-6-9+7+9+8+0+7-9+1+4&&-93"] = 202;
}}
