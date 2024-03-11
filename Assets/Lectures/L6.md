# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Lecture 6 - Higher Order Functions (Continued) and Function Composition
![](https://img.shields.io/badge/-11th_Mar-orange)

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
main :: IO ()
main = do
    -- Define a function to subtract two numbers
    let subtractNum :: Int -> Int -> Int
        subtractNum x y = x - y
    
    -- List of numbers
    let numbersList = [1, 2, 3, 4]
    
    -- Using foldl to perform left fold with subtraction
    let foldlResult = foldl subtractNum 0 numbersList
    putStrLn $ "Foldl Result: " ++ show foldlResult
    -- Result: -10 (0 - 1 - 2 - 3 - 4)
    
    -- Using foldr to perform right fold with subtraction
    let foldrResult = foldr subtractNum 0 numbersList
    putStrLn $ "Foldr Result: " ++ show foldrResult
    -- Result: -2 (1 - (2 - (3 - (4 - 0))))

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
### Home Work
```
-- Define a binary tree data type
data BinaryTree a = EmptyTree | Node a (BinaryTree a) (BinaryTree a) deriving (Show)

-- Function to insert an element into a binary tree
insert :: (Ord a) => a -> BinaryTree a -> BinaryTree a
insert x EmptyTree = Node x EmptyTree EmptyTree
insert x (Node a left right)
    | x == a = Node x left right
    | x < a  = Node a (insert x left) right
    | x > a  = Node a left (insert x right)

-- Function to check if an element is present in the binary tree
search :: (Ord a) => a -> BinaryTree a -> Bool
search _ EmptyTree = False
search x (Node a left right)
    | x == a = True
    | x < a  = search x left
    | x > a  = search x right

-- Example usage
exampleTree :: BinaryTree Int
exampleTree = foldr insert EmptyTree [5, 3, 7, 1, 9]

main :: IO ()
main = do
    print exampleTree  -- Output: Node 5 (Node 3 (Node 1 EmptyTree EmptyTree) EmptyTree) (Node 7 EmptyTree (Node 9 EmptyTree EmptyTree))
    putStrLn $ "Is 7 in the tree? " ++ show (search 7 exampleTree)  -- Output: Is 7 in the tree? True
    putStrLn $ "Is 10 in the tree? " ++ show (search 10 exampleTree) -- Output: Is 10 in the tree? False
```

Kindly do the execution step-by-step in your notebook.
