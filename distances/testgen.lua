--[[
Autogenerates test cases for distance problem

output: 
    possibly empty arrays of vector3s
]]
return function(n)
    n = n or 100
    local ret = {}
    for i=1,n do
        ret[i] = {}
        for j=1,math.random(0,50) do
            ret[i][j] = Vector3.new(math.random(-100,100),math.random(-100,100),math.random(-100,100))
        end
    end
    return ret
end

