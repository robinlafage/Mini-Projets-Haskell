#!/usr/bin/env ghci

halve :: [ Int ] -> ([ Int ] , [ Int ])
halve [] = ([],[])
halve [x] = ([x],[])
halve (x:y:zs)=((x:xs) , (y:ys))
  where (xs,ys)=halve(zs)
--si la liste est vide, on renvoit un couple vide
--si la liste est unitaire, on renvoit arbitrairement un couple de la liste unitaire et d'une liste vide
--sinon, on parcourt la liste 2 par 2 en ajoutant a chaque fois le premier element a droite et le deuxieme a gauche
--les deux cas d'arret gerent les cas de listes de tailles paires et impaires

combine :: [ Int ] -> [ Int ] -> [ Int ]
combine [] [] = []
combine x [] = x
combine [] y = y
combine (x:xs) (y:ys) | x<=y = x:(combine xs (y:ys))
                      | otherwise = y: (combine (x:xs) ys)
--combine fonctionne avec deux listes deja triees par ordre croissant
--a chaque occurence on compare le premier element des deux listes
--on place le plus petit a la fin de la liste combinee, puis on reboucle
--trois cas d'arret, selon que les listes soient de la meme taille, ou qu'elles soient de taille differentes

tri_fusion :: [ Int ] -> [ Int ]
tri_fusion [] = []
tri_fusion [x] = [x]
tri_fusion xs = combine (tri_fusion a) (tri_fusion b)
 where (a,b) = halve xs
--on separe une liste en deux listes egales (a 1 pres), qu'on separe aussi en deux, etc jusqu'a arriver a des listes unitaires
--puis on les recombine deux par deux en conservant ainsi des listes tries par ordre croissant, jusqu'a avir une seule liste
