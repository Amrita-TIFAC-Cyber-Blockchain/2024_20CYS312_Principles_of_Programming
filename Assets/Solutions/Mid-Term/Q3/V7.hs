pairswap :: [a] -> [a]
pairswap [] = []
pairswap (x:y:xs) = [y] ++ [x] ++ pairswap(xs)

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
	
-- Solved this way by Nithin S, Siddharth Krishna, Rakshan K, 	

