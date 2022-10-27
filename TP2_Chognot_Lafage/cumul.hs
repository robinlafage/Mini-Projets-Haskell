#!/usr/bin/env ghci

somme :: [Int] -> Int
somme [] = 0
somme (x:xs) = x + somme xs

produit :: [Int] -> Int
produit [] = 1
produit (x:xs) = (*) x (produit xs)

cumule :: (Int -> Int -> Int) -> Int -> [Int] -> Int
cumule f i [] = i
cumule f i (x:xs) = f x (cumule f i xs)
-- On applique f au premier element, et ansi de suite jusqu'au cas d'arret

somme2 :: [Int] -> Int
somme2 liste = cumule (+) 0 liste
--on definit la somme avec l'operateur + et l'operande neutre 0

produit2 :: [Int] -> Int
produit2 liste = cumule (*) 1 liste
--on definit le produit avec l'operateur x et l'operande neutre 1

maxi :: [Int] -> Int
maxi (x:xs) = maxi_aux x xs
 where maxi_aux a [] = a
       maxi_aux a (x:xs) | a<=x = maxi_aux x xs
                         | otherwise = maxi_aux a xs
--quand on cherche le max d'une liste, c'est par defaut le premier element
--puis on parcourt la liste et on compare a chaque fois le max temporaire a l'element qui le succede
