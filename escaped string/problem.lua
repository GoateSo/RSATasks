local mkTests = require(script.Parent.testgen)

--template
local function getString(str)
	return ""
end

--testing template
for _,str in ipairs(mkTests()) do
	local res = getString(str)
end
