#!/usr/bin/env ghci

parties :: [Int] -> [[Int]]
parties [] = [[]]
parties (x:xs) = (parties xs) ++ (map (x:) (parties xs))
--vu en TD

combinaison :: Int -> [a] -> [[a]]
combinaison 0 [] = [[]]
combinaison k [] = []
combinaison k (x:xs) = (combinaison k xs) ++ (map(x:) (combinaison (k-1) xs))
{-mathematiquement, pour calculer les combinaisons de k parmi n, on calcule celles de k parmi n-1 (n sans le premier element),
fois celles de k parmi n contenant le premier element. C'est la meme idee que parties vue en TD, mais on reboucle sans le
premier element -}

npart :: Int -> Int -> Int
npart n k =div (fact n) ( (fact k) * (fact (n-k)) )
  where fact 0 = 1
        fact a = a * fact (a-1)
{-On calcule les k parmi n part l'expression mathématique
On definit une fonction auxilliaire factorielle pour realiser les calculs
-}
