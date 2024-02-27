# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lab 4 - Higher Order Functions 
![](https://img.shields.io/badge/-27th_Feb-orange)

A higher-order function is a function that takes other functions as arguments or returns a function as result.

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

##### Final Example
```
-- Function to process and print a single test case
processTestCase :: (Int, [Int]) -> IO ()
processTestCase (n, xs) = putStrLn $ "take " ++ show n ++ " " ++ show xs ++ " = " ++ show (takeFunction n xs)

takeFunction :: Int -> [a] -> [a]
takeFunction n _
  | n <= 0    = []     -- Case: take 0 or negative elements, or empty list
takeFunction _ []       = [] -- Case: take any elements from an empty list
takeFunction n (x:xs) = x : takeFunction (n-1) xs -- Case: take n elements from the list

main :: IO ()
main = do
    let testCases = [(3, [10,20,30,40,50,60]),(2, []), (-4, [3,5,5]), (1000, [3,4,3])]
    putStrLn "Test Cases:"
    mapM_ processTestCase testCases
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
