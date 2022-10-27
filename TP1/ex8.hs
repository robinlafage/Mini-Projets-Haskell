#!/usr/bin/env ghci

echange :: (a -> a -> a) -> (a -> a -> a)
echange f x y = f y x

cube :: Int-> Int
cube = echange (^) 3 

moinsDeux :: Int-> Int
moinsDeux = echange (-) 2 