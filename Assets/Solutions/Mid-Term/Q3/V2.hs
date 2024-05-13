pairswap :: [a] -> [a]
pairswap [] = []
pairswap x = [x!!1] ++ [x!!0] ++ pairswap (drop 2 x)

main :: IO ()
main = do
    let listInput = [1..6]
        stringInput = "ammu"
        emptyList = [] 
    putStrLn $ "Input List:" ++ show listInput
    putStrLn $ "Pairwise Swapped List:" ++ show (pairswap listInput)
    putStrLn $ "Input String:" ++ stringInput
    putStrLn $ "Pairwise Swapped String:" ++ (pairswap stringInput)
    putStrLn $ "Input String:" ++ emptyList
    putStrLn $ "Pairwise Swapped String:" ++ (pairswap emptyList)
	
-- Solved this way by Aravind S, 
