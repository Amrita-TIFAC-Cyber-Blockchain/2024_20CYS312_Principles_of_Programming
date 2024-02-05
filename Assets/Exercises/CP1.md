# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Class Exercises 1

Practice these programs and try understanding them.

### Square of a Number
```
square :: Num a => a -> a
square x = x * x

main :: IO ()
main = do
    let result = square 5
    putStrLn $ "Square of 5 is: " ++ show result
```

### Length of a List
```
listLength :: [a] -> Int
listLength [] = 0
listLength (_:xs) = 1 + listLength xs

main :: IO ()
main = do
    let myList = [1, 2, 3, 4, 5]
    putStrLn $ "Length of the list is: " ++ show (listLength myList)
```

### Check if List is Empty
```
isEmpty :: [a] -> Bool
isEmpty [] = True
isEmpty _  = False

main :: IO ()
main = do
    let myList = [1, 2, 3]
    putStrLn $ "Is the list empty? " ++ show (isEmpty myList)
```

### Calculate Area of Circle
```
circleArea :: Floating a => a -> a
circleArea radius = pi * square radius

main :: IO ()
main = do
    let radius = 3.0
    putStrLn $ "Area of the circle with radius " ++ show radius ++ " is: " ++ show (circleArea radius)
```

### Factorial using Accumulator
```
factorialAcc :: Integer -> Integer
factorialAcc n = factorialHelper n 1
  where
    factorialHelper 0 acc = acc
    factorialHelper m acc = factorialHelper (m - 1) (m * acc)

main :: IO ()
main = do
    let n = 5
    putStrLn $ "Factorial of " ++ show n ++ " is: " ++ show (factorialAcc n)
```

