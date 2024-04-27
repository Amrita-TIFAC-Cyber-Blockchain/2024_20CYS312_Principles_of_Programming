findMax :: [Int] -> Int
findMax [x] = x
findMax (x:xs) = if x > findMax xs then x else findMax xs

main :: IO ()
main = do
    let list1 = [1, -5, -3, 9, -2]
    let list2 = [117, 12, 81, 14, 16]
    putStrLn "Testing findMax function:"
    putStrLn $ "List 1: " ++ show list1 ++ ", Maximum: " ++ show (findMax list1)
    putStrLn $ "List 2: " ++ show list2 ++ ", Maximum: " ++ show (findMax list2)