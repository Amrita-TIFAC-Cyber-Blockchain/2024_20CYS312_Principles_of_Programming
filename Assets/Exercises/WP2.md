# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Practice Exercises 2
- **Date of Start:** ![](https://img.shields.io/badge/-23th_Feb-green)
- **Date of Submission:** ![](https://img.shields.io/badge/-27th_Feb-red)

### Submission Instruction
- Submit the **.zip** file containing the **Haskell Code (.hs)** with proper comments along with the **Screenshot of the output (.jpg/.png)** in [AUMS]().
- **File Name Convention:**
  - PE2_Haskell_Prelude.zip

### Practice
- **id:** The identity function, returns its argument unchanged.
```
ghci> id 44
44
```
- **const:** Takes two arguments and returns the first one, ignoring the second.
```
ghci> const 44 "popl"
44
```
- **(.):** Function composition operator.
```
ghci> (head . reverse) [14,89,90,84,11,18,44,78,72]
72
```
- **flip:** Takes a function and returns a function that applies its arguments in reverse order.
```
ghci> flip (-) 18 44
26
```
- **concat:** Flattens a list of lists into a single list.
```
ghci> concat [[10,21],[32,43],[55]]
[10,21,32,43,55]
```
- **head:** Returns the first element of a list.
```
ghci> head [18,44,24,05,10,23]
18
```
- **tail:** Returns all but the first element of a list.
```
tail [18,44,24,05,10,23]
[44,24,5,10,23]
```
- **init:** Returns all but the last element of a list.
```
ghci> init [18,44,24,05,10,23]
[18,44,24,5,10]
```
- **last:** Returns the last element of a list.
```
ghci> last [18,44,24,05,10,23]
23
```
- **length:** Returns the length of a list.
```
ghci> length [18,44,24,05,10,23]
6
```
- **reverse:** Reverses a list.
```
ghci> reverse [18,44,24,05,10,23]
[23,10,5,24,44,18]
```
- **take:** Takes a specified number of elements from the beginning of a list.
```
ghci> take 2 [18,44,24,05,10,23]
[18,44]
```
- **drop:** Drops a specified number of elements from the beginning of a list.
```
ghci> drop 3 [18,44,24,05,10,23]
[5,10,23]
```
- **elem:** Checks if an element is present in a list.
```
ghci> elem 18 [18,44,24,05,10,23]
True
ghci> elem 9 [18,44,24,05,10,23]
False
```
### Questions
- Write a Haskell function `intersectionLength` that takes two lists of integers and returns the length of the intersection of the two lists. You should implement this using recursion, list comprehension.
```
intersectionLength [1, 2, 3, 4, 5] [4, 5, 6, 7, 8] -- should return 2
intersectionLength [1, 2, 3, 4, 5] [6, 7, 8, 9, 10] -- should return 0
intersectionLength [1, 2, 3, 4, 5] [5, 4, 3, 2, 1] -- should return 5
```
- Write a Haskell function `rotateList` that takes a list of integers and an integer n as input, and rotates the elements of the list to the left by n positions. If n is negative, rotate the elements to the right instead. Implement this using recursion, list comprehension.
```
rotateList [1, 2, 3, 4, 5] 2 -- should return [3, 4, 5, 1, 2]
rotateList [1, 2, 3, 4, 5] (-1) -- should return [5, 1, 2, 3, 4]
rotateList [1, 2, 3, 4, 5] 7 -- should return [4, 5, 1, 2, 3]
```
