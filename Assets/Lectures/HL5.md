# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 5 - Types (Continued)
![](https://img.shields.io/badge/-06th_Mar-orange)

### Usage Variants

```
-- Define the Student type
type Student = (Int, String, String)

-- Function to create an student
createStudent :: Int -> String -> String -> Student
createStudent rollNo stuFName stuLName =
    (rollNo, stuFName, stuLName)

-- Main Function
main :: IO ()
main = do
    let student = createStudent 44 "Ramaguru" "Radhakrishnan"
    putStrLn $ "Student details: " ++ show student

```

```
-- Define the Student type
type Student = (Int, String, String)

-- Function to create a student
createStudent :: Int -> String -> String -> Student
createStudent rollNo stuFName stuLName =
    (rollNo, stuFName, stuLName)

-- Function to get the roll number of a student
getRollNo :: Student -> Int
getRollNo (rollNo, _, _) = rollNo

-- Function to get the full name of a student
getFullName :: Student -> String
getFullName (_, stuFName, stuLName) = stuFName ++ " " ++ stuLName

-- Function to update the first name of a student
updateFirstName :: Student -> String -> Student
updateFirstName (rollNo, _, stuLName) newFirstName = (rollNo, newFirstName, stuLName)

-- Function to update the last name of a student
updateLastName :: Student -> String -> Student
updateLastName (rollNo, stuFName, _) newLastName = (rollNo, stuFName, newLastName)

-- Main Function
main :: IO ()
main = do
    let student = createStudent 44 "Ramaguru" "Radhakrishnan"
    putStrLn $ "Student details: " ++ show student
    putStrLn $ "Roll number: " ++ show (getRollNo student)
    putStrLn $ "Full name: " ++ getFullName student
    let updatedStudent = updateFirstName student "Rama"
    putStrLn $ "Updated student details: " ++ show updatedStudent
```

### Home Work
Write a Haskell Program to define a new type ```Employee``` is defined as a type synonym for a tuple containing an ```Int(employee ID)```, two ```Strings (employee name and department)```
, a ```Float (salary)```, and an ```Int (years of service)```. The ```createEmployee``` function creates a new Employee tuple with the given values. The ```calculateTotalSalary``` function 
calculates the ```total salary``` of an employee by multiplying their ```salary``` with their ```years of service```.
