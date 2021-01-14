--[[
Autogenerates test cases for escaped string problem

output:
  an array of strings with at least 30 characters which contain 2 unescaped quotes, and between 0 and 5 escaped quotes within the unescaped quotes 
]]
local function insert(s,s2,i)
	return s:sub(1,i)..s2..s:sub(i+1)
end
return function(n)
	n = n or 100
	local ret = {}
	while #ret < n do
		local t = {}
		for j = 1, math.random(28,100) do
			t[j] = math.random(48,126)
		end
		local s = string.char(table.unpack(t)):gsub("\\","")
		local k1 = math.random(3,#s // 2)
		local k2 = math.random(k1+5,#s)
		s = insert(s,"\"",k1)
		s = insert(s,"\"",k2+1)
		k1 = k1 + 1
		for j = 1, math.random(0,10) do
			k2 = k2 + 2
			local k = math.random(k1,k2)
			s = insert(s,[[\"]],k)
		end
		if not s:match([[\\]]) then ret[#ret+1] = s end
	end
	return ret
end
