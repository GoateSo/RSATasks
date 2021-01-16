--[[
Autogenerates test cases for sliding problem

output: arrays of three values:
	arr, a possibly empty array
	width, a positive integer 
	step, a positive integer 
]]
return function(n)
    n = n or 100
    local ret = {}
    for i = 1, n do
        local t = {}
        for i = 1, math.random(0,5000) do
            t[i] = math.random(-100,100) 
        end
        ret[i] = {t,math.random(1,100),math.random(1,100)}
    end
    return ret
end
