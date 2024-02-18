# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Class Exercises 2

Please complete these programs. 

- Implement a function `compose` that takes `two functions f and g`, and returns a new function that applies f to the result of applying g to its argument.
  For example, given functions double `x = x * 2` and increment `x = x + 1`, `compose double increment 3` should return 8.
  Note: Please implement a different function of your choice for f and g.
- Implement a function `flatten` that takes a list of lists and flattens it into a single list using list comprehension.
  For example, flatten [[1,2,3],[4,5],[6]] should return [1,2,3,4,5,6].
- Write a function `lastElement` that returns the last element of a list using `recursion` and the `:` and `tail` operators.
- Write a function `listLength` that calculates the length of a list using `recursion` and the `:` operator for list construction.
- Write a function `reverseList` that reverses a list using `recursion` and the `:` operator.
- Identify the purpose of the below function and complete the program with suitable input within main function:
  ```
  func :: [[a]] -> [[a]]
  func [] = []
  func ([]:_) = []
  func m = [[r !! i | r <- m] | i <- [0..length (head m) - 1]]
  ```
