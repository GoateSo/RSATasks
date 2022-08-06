# Find First String With Escaped Quotes

### Directions:

given a string containing at least 2 unescaped quotation marks (`"`) and any number of escaped quotation marks (`\"`), find the **first** string of characters between unescaped quotation marks without using string patterns. 

### Input
`str`, a string containing at least 2 unescaped quotation marks and any number of escaped quotation marks


### Output
 a string of the character between the unescaped quotes

### Example

for input: 
```lua
str = [[Bob told me: "Jimmy says \"Hello\""]]
```
the output should be 
```lua
[[Jimmy says \"Hello\"]]
```
since while there are quotations around `Hello`, they're escaped so they can neither act as starting quotes nor ending quotes, and are instead treated as literal characters