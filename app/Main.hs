module Main (main) where

-- import Lib

main :: IO ()
-- main = someFunc

main = undefined

fizzBuzzOne :: Int -> String
fizzBuzzOne num 
    | num `mod` 15 == 0 = "FizzBuzz"
    | num `mod` 3 == 0 = "Fizz"
    | num `mod` 5 == 0 =  "Buzz"
    | otherwise = show num


fizzBuzzMulti :: Int -> [String]
fizzBuzzMulti num = map fizzBuzzOne [1..num]

fizzBuzzWithPrompt :: IO ()
fizzBuzzWithPrompt = 
    putStrLn "Please enter how many numbers you want in the FizzBuzz" >> getLine >>= \input ->
    -- TODO: use a total function instead for read
    let num = (read input :: Int) in putStr . unlines $ fizzBuzzMulti num


-- NOTES
-- function composition vs function application ( . vs $)
-- domain = all of inputs, range = all of outputs, function = maps domain to range