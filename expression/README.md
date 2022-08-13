# Evaluate Expression in given Notation

### directions: 
___

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

**Further Clarification**: an operation `-(d)(exp)` (as well as `+(d)(exp)`) should be thought of as `(d) - (exp)` (or `(d) + (exp)`) where both `d` and `exp` are already evaluated

### input:
___

`s`, a string representing an expreesion

### output:
___

a number which reprsents the value gotten by evaluating the expression

### example:
___

for input:
```lua
s = "&+1-53"
```
the output should be 
```lua
6
```
1. the subtraction `-53` is performed, which evaluates to `5 - 3 = 2`
2. the result of that is used in an addition, which evaluates to `1 + 2 = 3`
3. the result of that addition is given to `&` which evaluates to `1 + 2 + 3 = 6`
