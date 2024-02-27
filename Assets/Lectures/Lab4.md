# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lab 3 - List Comprehension and Recursion
![](https://img.shields.io/badge/-27th_Feb-orange)

### Map, Filter and Foldr

#### Map
 The `map` function applies a given function to each element of a list, returning a new list with the transformed elements.
 
##### Simple Example
```
-- Let's define a function to double each element of a list
double :: Int -> Int
double x = x * 2

-- Applying double to each element of a list
doubledList = map double [1, 2, 3, 4, 5]
-- Result: [2, 4, 6, 8, 10]
```

##### Another Example
```
-- Function to convert Fahrenheit to Celsius
fahrenheitToCelsius :: Float -> Float
fahrenheitToCelsius f = (f - 32) * 5 / 9

-- Applying fahrenheitToCelsius to a list of temperatures
temperaturesFahrenheit = [32, 68, 77, 104]
temperaturesCelsius = map fahrenheitToCelsius temperaturesFahrenheit
-- Result: [0.0, 20.0, 25.0, 40.0]
```

#### Filter
The `filter` function takes a predicate (a function that returns a boolean value) and a list, returning a new list containing only the elements that satisfy the predicate.

##### Simple Example
```
-- Let's define a predicate to filter even numbers
isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

-- Filtering even numbers from a list
evenNumbers = filter isEven [1, 2, 3, 4, 5]
-- Result: [2, 4]
```

##### Another Example
```
-- Function to filter strings containing a specific substring
containsSubstring :: String -> Bool
containsSubstring str = "hello" `elem` str

-- Filtering strings containing "hello" from a list of strings
wordsList = ["hello world", "goodbye", "hi there", "hello friend"]
helloStrings = filter containsSubstring wordsList
-- Result: ["hello world", "hello friend"]
```

#### foldr and foldl
The `foldr` function (right fold) takes a binary function, an initial accumulator value, and a list. It recursively combines the elements of the list from right to left using the binary function and the accumulator.

##### Simple Example
```
-- Let's define a function to sum all elements of a list
sumList :: [Int] -> Int
sumList xs = foldr (+) 0 xs

-- Summing all elements of a list
totalSum = sumList [1, 2, 3, 4, 5]
-- Result: 15
```

##### Another Example
```
-- Function to calculate the factorial of a number
factorial :: Int -> Int
factorial n = foldr (*) 1 [1..n]

-- Calculating the factorial of 5
factorialOfFive = factorial 5
-- Result: 120 (1 * 2 * 3 * 4 * 5)
```

##### foldl and foldr
```
-- Define a function to subtract two numbers
subtractNum :: Int -> Int -> Int
subtractNum x y = x - y

-- List of numbers
numbersList = [1, 2, 3, 4]

-- Using foldl to perform left fold with subtraction
foldlResult = foldl subtractNum 0 numbersList
-- Result: -10 (0 - 1 - 2 - 3 - 4)

-- Using foldr to perform right fold with subtraction
foldrResult = foldr subtractNum 0 numbersList
-- Result: 2 (1 - (2 - (3 - (4 - 0))))
```
