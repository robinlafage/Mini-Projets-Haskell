module Hanoi where

import Set

data Pos = A | B | C  deriving (Show, Eq)
--un element de type Pos indique la position d'un disque, sur un des trois piquets

data Movement = Mvt Int Pos Pos deriving Show
--un element de type Movement est un deplacement d'un piquet a un autre, d'un disque identifie par l'element Int

hanoi :: Int -> [Movement]
hanoi k = hanoi_aux k A B

other :: Pos -> Pos -> Pos
other p1 p2 = grab (set_difference (set [A,B,C]) (set [p1,p2]))


hanoi_aux :: Int -> Pos -> Pos -> [Movement]
hanoi_aux 1 p1 p2 = [Mvt 1 p1 p2]
hanoi_aux k p1 p2 = (hanoi_aux (k-1) p1 (other p1 p2)) ++ (hanoi_aux 1 p1 p2) ++ (hanoi_aux (k-1) (other p1 p2) p2)
--On deplace l'element au dessus sur un autre piquet, puis les autres disques sur le piquet restant
--Pour realiser cette deuxieme operation, on repete l'operation ci-dessus avec un disque de moins  
