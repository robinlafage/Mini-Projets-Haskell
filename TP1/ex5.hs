#!/usr/bin/env ghci

puissance :: Int -> Int
puissance _ 0 = 1
puissance a n = a* (puissance a (n-1))

puissance :: Int -> Int -> Int
puissance _ 0 = 1
puissance a n = a * (puissance a (n-1))

factorielle :: Int -> Int
factorielle 0 = 1
factorielle a = a * factorielle (a-1)

nEntiers :: Int -> Int
nEntiers 1 = 1
nEntiers a = a + nEntiers (a-1)

nEntiersCarres :: Int -> Int
nEntiersCarres 1 = 1
nEntiersCarres a = a^2 + nEntiers (a-1)

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci a = fibonacci (a-1) + fibonacci (a-2)