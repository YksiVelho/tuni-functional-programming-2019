{--
 -  Write a function that, given a string, uses recursion on the list of characters and checks whether the string contains only digits or not. Empty string should return false.
--}

import Data.Char

one :: Int
one = 1

onlyDigits' :: [Char] -> Bool
onlyDigits' [] = False
onlyDigits' (x:xs)
    | isDigit (x) == False = False
    | length xs == 0 = True
    | otherwise =  onlyDigits' (drop one xs)
