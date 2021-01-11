--[[
Autogenerates test cases for distance problem

output: 
    possibly empty arrays of between 0 and 50 vector3s, with each of the X, Y, and Z values in range [-100,100]
]]
local function mkTests(n)
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
