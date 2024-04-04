# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 3 - Introduction to Functional Programming (Continued)
![](https://img.shields.io/badge/-24th_Jan-orange)

### Example 1 - Hello World
```
-- Example1.hs

main :: IO ()
main = putStrLn "Hello, World!"
```

### Example 2 - Function Definition and Calling
```
-- Example2.hs

addTwoNumbers :: Int -> Int -> Int
addTwoNumbers x y = x + y

main :: IO ()
main = print (addTwoNumbers 3 4)
```

### Example 3 - Pattern Matching
```
-- Example3.hs

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = print (factorial 5)
```

### Example 4 - Lists
```
-- Example4.hs

myList :: [Int]
myList = [1, 2, 3, 4, 5]

main :: IO ()
main = print myList
```

### Example 5 - List Comprehension
```
-- Example5.hs

squares :: [Int]
squares = [x^2 | x <- [1..5]]

main :: IO ()
main = print squares
```
