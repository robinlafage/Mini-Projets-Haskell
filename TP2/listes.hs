#!/usr/bin/env ghci
data Liste = Vide | Cons Int Liste deriving Show

vide :: Liste -> Bool
vide Vide = True
vide _ = False
--filtrage de motif

premier :: Liste -> Int
premier (Cons a _) = a

reste :: Liste -> Liste
reste (Cons _ liste) = liste

longueur :: Liste -> Int
longueur Vide = 0
longueur xs = (+) 1 (longueur (reste xs))

dernier :: Liste -> Int
dernier (Cons a Vide) = a
dernier (Cons a liste) = dernier liste
--on s'arrete quand le prochain element Liste vaut Vide

applique :: (Int -> Int) -> Liste -> Liste
applique f Vide = Vide
applique f (Cons a liste) = Cons (f a) (applique f liste)
--on applique f au premier element, puis on reboucle. f appliquee a Vide donne Vide

ajoute :: Int -> Liste -> Liste
ajoute b Vide = Cons b Vide
ajoute b (Cons a liste) = Cons a (ajoute b liste)
--On parcourt la liste jusqu'a trouver la fin (meme methode que dernier), et on remplace Vide par Cons b Vide

renverse :: Liste -> Liste
renverse Vide = Vide
renverse (Cons a liste) = ajoute a (renverse liste)
--fonctionnement en pile, on ajoute le premier a la fin, le second a l'avant derniere place etc. Le Vide se retrouve au debut
