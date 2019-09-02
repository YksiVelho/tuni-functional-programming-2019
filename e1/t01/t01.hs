--Write a function that given an Int x, evaluates to a list of such points in 2-dimensional space  (pairs of type (Int,Int)), that their Manhattan distance from origin (0.0,0.0) is at most x. Use list comprehension.

--The type of your function should be

--Int -> [(Int,Int)]

--and you should include the type definition in your code.

--Manhattan distance between two points is the sum of x-distance and y-distance. Ie Manhattan distance between (3,3) and (2,6) is 1+3 = 4 (distance between 3 and 2 + distance between 2 and 6).

manhattan :: Int -> [(Int,Int)]
manhattan x =  [ (a,b) | a <- [0..x], b <- [0..x], a+b <= x]
