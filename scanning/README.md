# Scanning Right to Left

### Directions:
produce an array containing the middle results of applying a 2 argument function from right → left on an array


### Input:
`arr:` a possibly empty array of numbers (could include the initial value)
`init:` a number representing the inital value
`op:` a 2 argument function to be applied on the intermediate result and the current element
 

### Output:
an array of the intermediate results

### Example:

for input:
```lua
arr = {1,3,5,7,9}
init = 0
op = function(b, a)
  return a - b
end
```
the output should be 
```lua
{-25, -24, -21, -16, -9, 0}
```
since going from right to left:
```lua
0 = 0           (initial value)
0 - 9 = -9      (first result)
-9 - 7 = -16    (second result)
-16 - 5 = -21   (third result)
-21 - 3 = -24   (fourth result)
-24 - 1 = -25   (fifth result)
```

