module Hanoi where

import Set

data Pos = A | B | C  deriving (Show, Eq)
data Movement = Mvt Int Pos Pos   deriving (Show)

hanoi :: Int -> [Movement]
hanoi k = hanoi_aux k A B

hanoi_aux :: Int -> Pos -> Pos -> [Movement]

other :: Pos -> Pos -> Pos
