# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 2 - Introduction to Functional Programming
![](https://img.shields.io/badge/-23rd_Jan-orange)

Let us look into the example for filtering the Roll Numbers of 21CYS batch using Imperative and Functional Paradigms.

#### Imperative Approach
```
def filter_roll_numbers_procedural(roll_numbers):
    result = []
    for roll_number in roll_numbers:
        if roll_number.startswith("CBENU4CYS21") and roll_number[12:].isdigit():
            result.append(roll_number)
    return result

roll_numbers = ["CBENU4CYS21001", "CBENU4CYS21090", "CBENU4CYS22002", "CBENU4CYS22065"]
result_procedural = filter_roll_numbers_procedural(roll_numbers)
print(result_procedural)
```

#### Functional Approach
```
def is_valid_roll_number(roll_number):
    return roll_number.startswith("CBENU4CYS21") and roll_number[12:].isdigit()

def filter_roll_numbers_declarative(roll_numbers):
    result = filter(is_valid_roll_number, roll_numbers)
    return list(result)

roll_numbers = ["CBENU4CYS21001", "CBENU4CYS21090", "CBENU4CYS22002", "CBENU4CYS22065"]
result_declarative = filter_roll_numbers_declarative(roll_numbers)
print(result_declarative)
```

### Side Effects
#### Imperative Approach
```
def filter_roll_numbers_with_side_effects(roll_numbers):
    valid_roll_numbers = []
    for roll_number in roll_numbers:
        if roll_number.startswith("CBENU4CYS21") and roll_number[12:].isdigit():
            valid_roll_numbers.append(roll_number)
    # Modifying a global variable is a side effect
    global filtered_roll_numbers
    filtered_roll_numbers = valid_roll_numbers

roll_numbers = ["CBENU4CYS21001", "CBENU4CYS21090", "CBENU4CYS22002", "CBENU4CYS22065"]
filtered_roll_numbers = ["CBENU4CYS21018"]
filter_roll_numbers_with_side_effects(roll_numbers)
print(filtered_roll_numbers)
```

#### Functional Approach
```
def is_valid_roll_number(roll_number):
    return roll_number.startswith("CBENU4CYS21") and roll_number[12:].isdigit()

def filter_roll_numbers_without_side_effects(roll_numbers):
    # Using filter without modifying external state
    result = list(filter(is_valid_roll_number, roll_numbers))
    return result

roll_numbers = ["CBENU4CYS21001", "CBENU4CYS21090", "CBENU4CYS22002", "CBENU4CYS22065"]
filtered_roll_numbers = filter_roll_numbers_without_side_effects(roll_numbers)
print(filtered_roll_numbers)
```

### Functional Programming - Haskell

<p align="center">
    <img src="../images/haskell_logo.png" width=300 />
</p>

- Pure Functional Programming 
- Lazy Evaluation
- Static Typing
- Type Classes
- Purity and Immutability
- Pattern Matching
- Monads
- High-Level Abstractions

```
import Data.List (isPrefixOf)
import Data.Char (isDigit)

-- Define a function to check if a roll number is valid
isValidRollNumber :: String -> Bool
isValidRollNumber rollNumber =
  "CBENU4CYS21" `isPrefixOf` rollNumber && all isDigit (drop 12 rollNumber)

-- Define a function to filter roll numbers without side effects
filterRollNumbersWithoutSideEffects :: [String] -> [String]
filterRollNumbersWithoutSideEffects rollNumbers =
  filter isValidRollNumber rollNumbers

-- Example usage
main :: IO ()
main = do
  let rollNumbers = ["CBENU4CYS21001", "CBENU4CYS21090", "CBENU4CYS22002", "CBENU4CYS22065"]
      resultWithoutSideEffects = filterRollNumbersWithoutSideEffects rollNumbers
  print resultWithoutSideEffects
```
