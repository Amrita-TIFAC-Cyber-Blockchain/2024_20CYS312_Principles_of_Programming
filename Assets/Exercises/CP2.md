# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Class Exercises 2

Please complete these programs and submit the solutions as a .zip file in [AUMS](https://aumscb.amrita.edu/portal/site/67606/tool/5b707dc3-1d16-4617-a460-cb455024799a?null)
- PoPL_ROLLNUMBER_CP2.zip
 
### Exercises 
- **Q1:** Implement a function `compose` that takes `two functions f and g`, and returns a new function that applies f to the result of applying g to its argument.
  For example, given functions double `x = x * 2` and increment `x = x + 1`, `compose double increment 3` should return 8.
  Note: Please implement a different function of your choice for f and g.
- **Q2:** Implement a function `flatten` that takes a list of lists and flattens it into a single list using list comprehension.
  For example, flatten [[1,2,3],[4,5],[6]] should return [1,2,3,4,5,6].
- **Q3:** Implement a function `lastElement` that returns the last element of a list using `recursion` and the `:` and `tail` operators.
- **Q4:** Implement a function `listLength` that calculates the length of a list using `recursion` and the `:` operator for list construction.
- **Q5:** Implement a function `reverseList` that reverses a list using `recursion` and the `:` operator.
- **Q6:** Identify the purpose of the below function and complete the program with suitable input within main function:
  ```
  func :: [[a]] -> [[a]]
  func [] = []
  func ([]:_) = []
  func m = [[r !! i | r <- m] | i <- [0..length (head m) - 1]]
  ```
