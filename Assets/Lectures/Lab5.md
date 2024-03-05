# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lab 5 - Higher Order Functions (Continued), Function Composition and Types
![](https://img.shields.io/badge/-05th_Mar-orange)

### foldr and foldl
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

### Function Composition

```
	sanitizeInput :: String -> String
	sanitizeInput inputString = concatMap replaceAngleBrackets inputString
	  where
		replaceAngleBrackets '<' = "<"
		replaceAngleBrackets '>' = ">"
		replaceAngleBrackets c   = [c]

	validateInput :: String -> Bool
	validateInput inputString = length inputString > 5

	saveToDatabase :: String -> IO ()
	saveToDatabase inputString = putStrLn $ "Saving to database: " ++ inputString

	-- Function composition
	processUserInput :: String -> IO ()
	processUserInput x = saveToDatabase (sanitizeInput x)

	-- Example usage:
	main :: IO ()
	main = do
		let userInput = "<script>alert('Hello, 21CYS!')</script>"
		if validateInput userInput
			then processUserInput userInput
			else putStrLn "Input did not pass validation"
```

Another form

```
sanitizeInput :: String -> String
sanitizeInput inputString = concatMap replaceAngleBrackets inputString
  where
	replaceAngleBrackets '<' = "<"
	replaceAngleBrackets '>' = ">"
	replaceAngleBrackets c   = [c]

validateInput :: String -> Bool
validateInput inputString = length inputString > 5

saveToDatabase :: String -> IO ()
saveToDatabase inputString = putStrLn $ "Saving to database: " ++ inputString

-- Function composition
processUserInput :: String -> IO ()
processUserInput = saveToDatabase . sanitizeInput

-- Example usage:
main :: IO ()
main = do
	let userInput = "<script>alert('Hello, 21CYS!')</script>"
	if validateInput userInput
		then processUserInput userInput
		else putStrLn "Input did not pass validation"

```

### Types
- type
- newType
- data
  
#### Example
```
-- Define a data type representing shapes
data Shape = Circle Double | Rectangle Double Double

-- Function to calculate area of a shape
area :: Shape -> Double
area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

-- Example usage
main :: IO ()
main = do
    let circleArea = area (Circle 3.0)
        rectangleArea = area (Rectangle 2.0 4.0)
    putStrLn $ "Area of circle: " ++ show circleArea
    putStrLn $ "Area of rectangle: " ++ show rectangleArea
```

#### Another Example
```
type ProgrammingLanguage = String

-- Function to validate if a string represents a valid programming language
isValidLanguage :: String -> Bool
isValidLanguage lang = lang `elem` ["Haskell", "Python", "JavaScript", "Java", "C", "RAM"]

-- Example usage
main :: IO ()
main = do
    putStrLn "Enter a programming language:"
    language <- getLine
    if isValidLanguage language
        then putStrLn $ language ++ " is a valid programming language."
        else putStrLn $ language ++ " is not a valid programming language."
```

```
-- Define a custom data type for programming languages
data ProgrammingLanguage = Haskell | Python | JavaScript | Java | C | RAM 

-- Function to validate if a string represents a valid programming language
isValidLanguage :: String -> Bool
isValidLanguage "Haskell" = True
isValidLanguage "Python" = True
isValidLanguage "JavaScript" = True
isValidLanguage "Java" = True
isValidLanguage "C" = True
isValidLanguage "RAM" = True
isValidLanguage _ = False

-- Example usage
main :: IO ()
main = do
    putStrLn "Enter a programming language:"
    language <- getLine
    if isValidLanguage language
        then putStrLn $ language ++ " is a valid programming language."
        else putStrLn $ language ++ " is not a valid programming language."
```

### deriving
```
data ProgrammingLanguage = Haskell | Python | JavaScript | Java | C | RAM deriving (Eq)

-- Example usage
main :: IO ()
main = do
    let lang1 = Haskell
        lang2 = Python
    if lang1 == lang2
        then putStrLn "The languages are equal."
        else putStrLn "The languages are not equal."
```

```
-- Define types using newtype
newtype Meters = Meters Double deriving (Show)
newtype Feet = Feet Double deriving (Show)

-- Function to convert meters to feet
metersToFeet :: Meters -> Feet
metersToFeet (Meters m) = Feet (m * 3.28084)

-- Example usage
main :: IO ()
main = do
    let lengthInMeters = Meters 5.0
    putStrLn $ "Length in meters: " ++ show lengthInMeters
    putStrLn $ "Length in feet: " ++ show (metersToFeet lengthInMeters)
```
[Click Here](https://wiki.haskell.org/Type) to read more.
