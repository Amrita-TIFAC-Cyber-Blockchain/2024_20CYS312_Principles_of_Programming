# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lab 3 - List Comprehension and Recursion
![](https://img.shields.io/badge/-13th_Feb-orange)

### Types of Definitions
- Comprehension
- Recursion

#### Comprehension

```
-- Comprehension style of definition
factorialComp :: Integer -> Integer
factorialComp n
    | n == 0    = 1
    | otherwise = product [1..n]
```

#### Recursion  
```
-- Recursion style of definition
factorialRec :: Integer -> Integer
factorialRec 0 = 1
factorialRec n = n * factorialRec (n - 1)
```

To further understand this, we need to understand **List Comprehension** and **Construct** operator

#### List Comprehensions

- Using **Generators**: **&larr;** is read as **drawn from**, "x drawn from [85,72,61]"; "**x &larr; [85,72,61]**" is called **generator**.
```
[ x*x | x &larr; [85,72,61] ]
[ toLower c | c &larr; "Hello, 21CYS!" ]
```
- Using **Guards**: 
```
[ x | x &larr; [85,72,61], x > 65 ]
[ toLower c | c &larr; "Hello, 21CYS!", isAlpha c]
```
- Using **Accumulators** (Example: sum and product)
```
let factorial n = product [1..n]
factorial 4
```

#### Example
```
-- Function to calculate the squares of elements in a list
squares :: [Int] -> [Int]
squares xs = [x*x | x <- xs]

-- Function to filter out the odd elements from a list
odds :: [Int] -> [Int]
odds xs = [x | x <- xs, odd x]

-- Function to calculate the sum of squares of odd elements in a list
sumSqOdd :: [Int] -> Int
sumSqOdd xs = sum [x*x | x <- xs, odd x]

-- Property test to check if sum of squares of odd elements equals sumSqOdd result
prop_sumSqOdd :: [Int] -> Bool
prop_sumSqOdd xs = sum (squares (odds xs)) == sumSqOdd xs

-- Main function to test the above functions
main :: IO ()
main = do
    let inputList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  -- Example input list
    
    putStrLn "Original list:"
    print inputList
    
    putStrLn "Squares of the elements:"
    print $ squares inputList
    
    putStrLn "Odd elements:"
    print $ odds inputList
    
    putStrLn "Sum of squares of odd elements:"
    print $ sumSqOdd inputList
    
    putStrLn "Property test result:"
    print $ prop_sumSqOdd inputList
```
