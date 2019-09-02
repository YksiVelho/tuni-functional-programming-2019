{--
Write a function that, given a list of strings and a character evaluates to a list with all the strings of the input list
that either begin or end with the input character.
Use list comprehension to find the required strings from the input list.

Include the type definition of your function.
--}

-- t02 :: [[Char]] -> Char -> [[Char]]
t02 s c = [output | output <- s, head output == c || last output == c]

