# Approximate Square Root of A Number

### Directions:

generate a list of approixmations for the square root of a number given an inital approximation until the approximations are within a certain bound

you can generate a better approximation using the formula:
      `next_approx = (approx + (num / approx)) / 2`


This task should be done without the use of `math.sqrt`. When checking whether an approximation is in bound, check whether `|num - approximate²| < bound` instead of `|math.sqrt(num) - approximate| < bound`

### Input
`num`, a positive integer to get the square root of (not necessarily a perfect square)
`approx`, a positive integer which will be the inital approximation 
`bound`, an acceptable error bound

### Output
a list of approximations of the square root

### Example

for input: 
```lua
num = 3
approx =  1
bound = 1e-6 --1 * 10^-6
```
the output should be 
```lua
{1, 2, 1.75, 1.7321428571428572, 1.7320508100147274}
```
since `1.7320508100147274` is the first approximation within bounds:
`|1.7320508100147274² - 3| < 1e-6`