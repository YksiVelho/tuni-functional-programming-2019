{--
Lecture 2 2019.09.02
--}


-- dollar sign to change the running order
-- sum'' (map(2+) [1..20])
-- is the same as:
-- sum'' $ map(2+) [1..20]


-- load modules :m
-- in the .hs file 'import'
-- most modules come with haskell-platform

import Data.Char
import qualified Geometry.Cube as Cube
import qualified Geometry.Cuboid as Cuboid
import Area




-- ?
multThreeInts :: Int -> Int -> Int -> Int
multThreenInts x y z = x * y * z

MultThree3 = multThreeInts 3

-- ApplyTwice ((*)3) 4
-- result: 36
applyTwice f x = f ( f x )

-- zipWith' (*) [1..] [6,5,4,3]
-- reesult: [6, 10, 12, 12]
zipwith' _ [] = []
zipwith' [] _ = [] 
zipWith' f (x:xs) (y:ys) = (f x y) : zipWith f xs ys

-- map' ((*) 3) [2..10]
-- can be called without the ' and produces the same results
-- result: [6, 9, 12, 15, 18, 21, 24, 27, 30]
-- map is a standard function
map' f [] = []
map' f (x:xs) = f x : map' f xs

-- filtering
-- filter' (<4)  [1..10]
-- results an array of ints smaller than 4
filter' pred [] = []
filter' pred (x:xs)
     | pred x = x : filter' pred xs
     | otherwise = filter' pred xs

-- LOOK UP: lambda: \ 
-- zipWith (\x y -> if x < y  then x else y) [2,3,4] [3,3,3]
-- results [2, 3, 3]

-- ?? 
-- trying to understand folds

-- sum'' [1..20]
-- result: 210
sum' [] = 0
sum' (x:xs) =  x + sum xs

-- sum'' [1..20]
-- result: 210
sum'' xs = fold1 (\acc x -> acc + x) 0 xs

-- product'' [1..5]
-- result: 120
product'' xs = fold1 (\acc x -> acc * x) 1 xs

-- dollar sign to change the running order
-- sum'' (map(2+) [1..20])
-- is the same as:
-- sum'' $ map(2+) [1..20]

-- encode -3 "hello"
-- khoor
encode shift msg = 
    let numbers = map ord msg
	shifted = map ((+) shift) numbers
    in map chr shifted
-- function shifts the chars in alphabets
-- ord is function of Data.Char which encodes Char to Int
-- shift is the direction and amount of shift
-- msg is a string



{--
 MAKING OF A MODULE
 create in a separate file ie: Cuboid.hs
 --}

{--
module Geometry.Cuboid
(Point (..),
    volume,
    area)
    where

data Point = Point Float Float deriving show
--}
