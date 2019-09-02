{--
We represent playing cards with (Char,Int) pairs. 's' means spades, 'h' hearts, 'c' clubs and  'd' diamonds, with number values going from 2 to 14 (Ace being 14). Consider a game where a player gets two cards, and your function needs evaluate how many credits the player wins. The credits are determined as follows:

    If the player has the Ace of Spades, that is ('s',14) then the player wins 14 credits. 
    Otherwise if the player has  two consecutive numbes of the same suit (spades, hearts, clubs or diamonds), then the player wins 8 credits.
    Otherwise if the player has a pair (same number values), then the player wins 6 credits.
    Otherwise if the player has two consecutive numbers, then the player wins 4 credits.
    Otherwise if the player has two cards of the same suit (spades, hearts, clubs or diamonds) then the player wins 2 credits.
    Otherwise, the player wins 0 credits.

E.g. if the function is called with parameters

('c',8) ('c',7)

Then it should return

8
--}

let cards = [ (suits, number) | suit <- ['s', 'h', 'c', 'd'], number <- [1..14] ]
isCard c = [ (s,n) | s <- (fst cards), n <- (snd cards), c == (s,n) ]

game a b
    | aos a || aos b = 14
    | suits && diff == 1 = 8
    | diff == 0 = 6
    | diff == 1 = 4
    | suits = 2
    | otherwise = 0
      where isCard a b = if 
            aos z = (fst z) == 's' && (snd z) == 14
            diff = abs ((snd a) - (snd b))
            suits = fst a == fst b
	    
