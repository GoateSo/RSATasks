--[[contributed by CntKillMe

Input: points (an array of Vector3), #points >= 0, all points are unique.

Output: the distance between the closest pair of points, or 0 if there are less than 2 points.

Example:
	if points = { Vector3.new(0, 5, 10), Vector3.new(10, 10, 10), Vector3.new(0, 5, 7) },
	then minimum_distance(points) yields 3,
	because the distance between the first two points is ~11.575837,
	and the distance between the first and third point is 3,
	and the distance between the second and third point is ~11.575837.
]]

local mkTests = require(script.parent.testgen)

-- Only modify this function!
-- Bonus challenge ((Optional)) : solve this in O(n log n) time.
local function minimum_distance(points)
    return 0
end

--testing template
for _,points in ipairs(mkTests()) do
    local distance = minimum_distance(points) 
    -- ...
end
