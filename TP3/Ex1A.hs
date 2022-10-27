#!/usr/bin/env ghci

cumule :: (a -> a -> a) -> a -> [a] -> a
cumule f i [] = i
cumule f i (x:xs) = f x (cumule xs)

{--somme2 :: [Int] -> Int
somme2 liste = cumule (+) 0 liste

somme :: Num a => [a] -> a
somme liste = cumule (+) 0 liste
--}
