{--
  Write a function that, given a string, validates the string as a Finnish IBAN code.

  For details, see https://en.wikipedia.org/wiki/International_Bank_Account_Number#Validating_the_IBAN

  Length of a Finnish IBAN code is 18. Finnish IBAN begins with the country code FI and the rest of the characters are digits. You can assume that the input is without whitespaces.

  (Edited on 2.9., added some clarifying details):
 --}

import Data.Char

onlyDigits :: String -> Bool
onlyDigits [] = False
onlyDigits str = all isDigit str

splitIban n xs = splitAt n xs

-- Verifies the format is correct
checkIbanFormat xs
    let t = splitIban 2 xs
    in checCountryCode fst t && onlyDigits snd t

-- Verifies the country code
checkCountryCode xs
    | xs == ['F','I'] = True
    | otherwise = False

--Verifies the mod-97 operation
mod97 xs = (a, b) = splitIban 4 xs, 

rearrange xs 
    | 

-- Main function
validIban [] = False
validIban xs
    | length xs /= 17 = False
    | checkIbanFormat xs /= True = False
    | mod97 xs /= 1 = False
    | otherwise = True
