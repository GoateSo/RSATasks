# Evaluate Expression in given Notation

### directions: 

evaluate an expression given as a string with the following operations or a single digit:

```
digit          : an integer between 0 and 9 (inclusive)
& <expr>       : which computes the sum of numbers from 0 to the value of <expr>
- digit <expr> : which subtracts <expr> from <digit>
+ digit <expr> : which adds a digit to <expr>
```

where `<expr>` is an expression defined by the rules above

For `&`, if the value of `<expr>` is negative, the result should be 0 (it should only add up, not down)

Some example expressions can be found in the `testgen.lua` file

___

### Input:

`s`, a string representing an expreesion

### Output:

a number which reprsents the value gotten by evaluating the expression

___

### Example:
for Input:
```lua
s = "&+1-53"
```
the Output: should be 
```lua
6
```
first, the subtraction `-53` is performed, which evaluates to `5 - 3 = 2`
then the result of that is used in an addition, which evaluates to `1 + 2 = 3`
finally the result of that addition is given to `&` which evaluates to `1 + 2 + 3 = 6`