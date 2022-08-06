# Shortest Distance Between Pair

### Directions:
find the distance between the closest pair of points, or 0 if there are less than two points

### Input:
`points`, (a possibly empty array of Vector3), 
- #points >= 0, 
- all points are unique. 

### Output:
the closest distance between two points

### Example:

for input:
```lua
points = { Vector3.new(0, 5, 10), Vector3.new(10, 10, 10), Vector3.new(0, 5, 7) }
```
the output should be 
```lua
3
```
as the distance between the first 2 points is ~11.18, the distance between the first and third point is 3, and the distance between the last 2 points is ~11.58
