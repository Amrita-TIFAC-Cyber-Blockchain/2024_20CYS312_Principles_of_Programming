# 20CYS312 - Principles of Programming Languages
![](https://img.shields.io/badge/Batch-21CYS-lightgreen) ![](https://img.shields.io/badge/UG-blue) ![](https://img.shields.io/badge/Subject-PPL-blue) <br/>
![](https://img.shields.io/badge/Lecture-2-orange) ![](https://img.shields.io/badge/Practical-3-orange) ![](https://img.shields.io/badge/Credits-3-orange)

## Missed Mid-Term Question Paper with Solutions

#### 1. Write the \textit{type signature} of the below functions.
(a) drop   <br/>
(b) map   <br/>
(c) concat   <br/>
   
#### 2. Write a function _pairwiseConcat_ in Haskell that takes two lists of strings and concatenates them pairwise. 
If one list is longer than the other, the extra elements should be ignored.
Usage Example:
 1.  \> _pairwiseConcat_ [”a”, ”b”, ”c”] [”x”, ”y”, ”z”]
       [”ax”, ”by”, ”cz”]
 2.  \> _pairwiseConcat_ [”hello”, ”world”] [”!”, ”?”, ”!!”]
       ["hello!", "world?"]
 3.  \> pairwiseConcat [] [”a”, ”b”, ”c”]
       []

**Solution:**
```

```

#### 4. Write the equivalent to the following map and filter expression using list comprehension
(a) map reverse (filter (even . length) strs) <br/>
(b) map length (filter (\word → length word > 10) words)  <br/>


**Solution:** <br/>
(a) **[ reverse s | s ← strs, even (length s) ]** <br/>
(b) **[ length word | word ← words, length word > 5 ]** <br/>


#### 6. Complete the Haskell implementation of BinaryTree and trace the output step by step. ????? should be filled to complete the program

**Solution:**
```
-- Define a binary tree data type
data BinaryTree a = EmptyTree | Node a (BinaryTree a) (BinaryTree a) deriving (?????)

-- Function to insert an element into a binary tree
insert :: (Ord a) => a -> BinaryTree a -> BinaryTree a
insert x ????? = Node x EmptyTree EmptyTree
insert x (Node a left right)
| x == a = Node x left right
| x ????? a = Node a (insert x left) right
| x ????? a = Node a left (insert x right)

-- Function to check if an element is present in the binary tree
search :: (Ord a) => a -> BinaryTree a -> ?????
search _ EmptyTree = False
search x (Node a left right)
| x == a = True
| x < a = search x left
| x > a = search x right

-- Usage
examTree :: BinaryTree Int
examTree = ????? insert EmptyTree [78, 14, 03, 89]

main :: IO ()
main = do
print examTree
putStrLn $ "Is 89 in the tree? " ++ show (search 89 examTree)
putStrLn $ "Is 90 in the tree? " ++ show (search 90 examTree)
```

#### 7. Identify the key characteristic of Haskell that underscores its focus on composing functions and data structures to create concise and expressive code
**Solution:** Higher-order functions


#### 8. Complete the following Haskell function _sumPositive_.
```
-- Consider the following incomplete Haskell function definition for summing
all positive elements in a list
sumPositive :: [Int] -> Int
sumPositive [] = ???
sumPositive (x:xs) = ???
-- Your task is to complete the definition of the ’sumPositive’ function to
correctly calculate the sum of all positive elements in the given list ’xs’.
-- Assumption: the list ’xs’ is not empty.
```
**Solution:**
```

```

#### 9. Given the following _data_ type declaration, What does the function getValue return when provided with 6 as input?
```
data Result = Success Int | Failure

processValue :: Int -> Result
processValue x =
    if x > 0
    then Success (x * 2)
    else Failure

getValue :: Int -> Maybe Result
getValue x =
    if x `mod` 2 == 0
    then Just (processValue x)
    else Nothing
```
**Solution:** Just (Success 12)
