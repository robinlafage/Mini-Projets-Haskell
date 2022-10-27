#!/usr/bin/env ghci

espace :: Char -> Bool
espace ' ' = True
espace _ = False
--filtrage de motif

separe :: (Char -> Bool) -> [Char] -> ([Char], [Char])
separe f xs = separe_aux f xs ([],[])
 where separe_aux f [] (a,b) = (a,b)
       separe_aux f (x:xs) (a,b) | (f x) = separe_aux f xs (a++[x],b)
                                 | otherwise = (a,x:xs)
--si la liste est vide, on renvoit un couple de listes vides
--si le premier element courant de la liste verifie le predicat, on le concatene dans la liste de gauche, et on regarde l'element suivant
--sinon, on insere le reste de la liste dans b, et on renvoit le resultat

grignote_espace :: String -> String
grignote_espace xs = snd (separe espace xs)
--on separe les espaces du debut et le reste de la chaine avec la composition de separe et espace
--on utilise snd pour recuperer le second element du couple, c'est a dire la chaine sans les espaces de debut

un_mot :: String -> (String, String)
un mot [] = ([],[])
un_mot xs = (a, grignote_espace b)
 where (a,b) = separe (not.espace) (grignote_espace xs)
--on retire les espaces de debut de chaine
--la composition de not et espace retire de la chaine tous les caracteres jusqu'a trouver un espace, et les met dans un couple
--on retire de la partie restante de la chaine l'espace qui la separait du premier mot

mots :: String -> [String]
mots [] = []
mots xs = a:(mots b)
  where (a,b) = un_mot (grignote_espace xs)
--on concatene au fur et a mesure les elements des couples donnes par un_mot dans une liste, en retirant à chaque fois les espaces
