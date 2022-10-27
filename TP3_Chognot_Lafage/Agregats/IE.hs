module IE where

import Agregeable

data Int_ex = Moins_inf | I Int deriving (Show)

max_ie :: Int_ex -> Int_ex -> Int_ex
max_ie Moins_inf x = x
max_ie x Moins_inf = x
max_ie (I x) (I y) | x >= y = I x
                   | otherwise = I y
--si on donne a max_ie Moins_inf et n'importe quel nombre, il renvoie ce nombre. Sinon, il compare les deux nombres et renvoie le plus grand.


instance Agregeable Int_ex where
 neutre = Moins_inf
 operation = (max_ie)

--L'élément neutre est Moins_inf car tout calcul de maximum entre Moins_inf et n'importe quel autre nombre renvoie le nombre sus-mentionne

--map I transforme des Int en Int_ex (Int extended)

max_liste :: [Int] -> Int_ex
max_liste [] = Moins_inf
max_liste l = cumule (map I l)

--Sur une liste vide, max_liste renvoie l'element neutre
