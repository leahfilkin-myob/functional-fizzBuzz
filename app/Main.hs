module Main (main) where

-- import Lib
import Text.Read ( readMaybe ) 

main :: IO ()
main = fizzBuzzWithPrompt

fizzBuzzOne :: Int -> String
fizzBuzzOne num 
    | num `mod` 15 == 0 = "FizzBuzz"
    | num `mod` 3 == 0 = "Fizz"
    | num `mod` 5 == 0 =  "Buzz"
    | otherwise = show num


fizzBuzzMulti :: Int -> [String]
fizzBuzzMulti num = map fizzBuzzOne [1..num]

promptPositiveInt :: IO Int 
promptPositiveInt =  do
    userInput <- getLine
    let num = (readMaybe userInput :: Maybe Int) 
    case num of 
        Just x -> pure x
        Nothing -> putStr "Incorrect type - expecting positive integer: " >> promptPositiveInt


fizzBuzzWithPrompt :: IO ()
fizzBuzzWithPrompt =
    putStr "Please enter how many numbers you want in the FizzBuzz: " >> promptPositiveInt >>= \input -> putStr . unlines $ fizzBuzzMulti input


-- NOTES
-- function composition vs function application ( . vs $)
-- domain = all of inputs, range = all of outputs, function = maps domain to range
-- \input -> expression = (input) => expression in c#
-- go function = recursive helper function


-- TODO:
-- look into binds ( >>= =<< )
-- applicative vs monad vs monoid 