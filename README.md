# RSA Questions Tasks

tasks for admission into `#adv-scripting`

To submit a solution, message `@Pandas#0273` or `@ModMail#5460` with your solution as a lua file, code block, a pastebin, or any similar website thereof **(not as an image or a roblox place file)**

For any issue with any of the test cases, templates, or descriptions you may have found, please also DM me (`@GoateSo#9628`) about it

## Directions:

To begin, create a roblox place (any template will work, a baseplate will suffice for all cases). 

After the place is created, create a `Script` and a `ModuleScript` in the `ServerScriptService` tab and copy the contents of `problem.lua` and `testgen.lua` files into them, like so: 

![Image](https://i.imgur.com/4ELw1sn.png)

__Make sure that the script containing the contents of `testgen.lua` is named `testgen`__

To complete a task, edit the function in `problem` under the `--template` comment. 

![Image](https://i.imgur.com/sQ0LOO5.png)

When you feel like you've finished, hit `run` 

![Image](https://i.imgur.com/wpLqPVJ.png)

and check whether your solution passes the built-in tests by looking for an error in the output.

![Image](https://i.imgur.com/lDGPZx5.png)

If there are errors, look at the message to see what you can fix. If there aren't, you should then submit your solution to the people listed above.

## Disclaimers: 
- Do not cheat or ask for help, the purpose of these tasks is to filter out beginners to reduce channel noise.
- Cheaters will be disqualified, and those who fail to appear competent enough will be removed from the channel.
- **solutions have to fulfill the input and output requirements of the task**
- if a problem gives an array as input, **DO NOT MODIFY IT** unless explicitly told to do so

## Additional information:
- each task consists of 
   - **problem**, a lua file which lays out the directions, inputs, desired outputs, as well as giving an explained example, a solution template, and a testing template for a task
   - **testgen**, a lua file which provide a list of concrete examples to test against. These cases should serve as a good indication of whether your solution works or not for a given problem. Please run you program using them first before submitting your solution.
  - **examples**, a file which gives additional examples of inputs and outputs similar to those provided in the testgen file
