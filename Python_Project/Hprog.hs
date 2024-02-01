import System.Environment

subtractBy255 :: [Int] -> [Int]
-- base case
subtractBy255 [] = []
-- subtracts the head from 255, then recursively calls the function to do this operation to the entire list
subtractBy255 (x:xs) = 255 - x : subtractBy255 xs

main :: IO ()
main = do
    -- gets command line arguments
    args <- getArgs
    -- converts the command line arguments into a list of integers
    let numbers = map read args :: [Int]
        -- applies the function to the list of integers
        result = subtractBy255 numbers
        -- converts into a list of strings
        resultStrings = map show result
        -- joins the list of strings together into a single space-separated string
        outputString = unwords resultStrings
    -- has the final output string
    putStrLn outputString