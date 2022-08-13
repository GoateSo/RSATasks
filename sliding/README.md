# Pass Sliding Window Over Array

### Directions:

Groups elements of the array in fixed size blocks by passing a "sliding window" over them, stopping when the number of elements in the collection is smaller than the  width
 
___

### Input:
`arr`, the array which the sliding window is passed over
`width`, the number of elements per group
`step`, the distance between the first elements of each group


### Output:
an array of arrays of size `width` each representing a window of `arr`

___

### Example

for Input: 
```lua
arr = {1, 2, 3, 4}
width = 2
step = 1
```
the Output: should be 
```lua
{{1, 2}, {2, 3}, {3, 4}}
```
as passing window of size 2 over the array gives: 
```lua
{[1, 2], 3, 4}    --window : {1,2}
{1, [2, 3], 4}    --move start up 1, window : {2,3}
{1, 2, [3, 4]}   --move start up 1, window : {3,4}
```
---
another example with a larger step would be for Input:
```lua
arr = {1, 2, 3, 4, 5, 6}
width = 2 
step = 3
```
the Output: should be 
```lua
{{1, 2}, {4, 5}}
```
as passing window of size 2 over the array gives: 
```lua
{[1, 2], 3, 4, 5, 6}    --window : {1,2}
{1, 2, 3, [4, 5], 6}    --move start up 3, window : {4,5}
-- moving start up 3 again would be out of bound
```

---

NOTE: a window must be exactly size `width`, a window like for example:
```lua
{[1,2,3],4}
{1,2,[3,4}] --this window
``` 
would be invalid, as the 2nd window only contains 2 values instead of the expected 3
