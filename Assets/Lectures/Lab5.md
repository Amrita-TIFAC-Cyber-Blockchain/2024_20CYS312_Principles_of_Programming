# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lab 5 - Types
![](https://img.shields.io/badge/-05th_Mar-orange)

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
