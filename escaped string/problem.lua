--[[
directions: given a string containing at least 2 unescaped quotation marks(") and any number of escaped quotation marks (\"), find the first string of characters between unescaped quotation marks

input: a string containing at least 2 unescaped quotes and any number of escaped quotes

output: a string of the character between the unescaped quotes

example:
	Bob told me: "jimmy says \"Hello\"" -->
yields
	jimmy says \"Hello\"
since
	while there are quotations around "Hello", they're escaped so they can neither act as starting quotes nor ending quotes, and are instead treated as literal characters
]]

local mkTests = require(script.Parent.testgen)

--template
local function getString(str)
    return ""
end

--testing template
for _,str in ipairs(mkTests()) do
    local res = getString(str)
end
