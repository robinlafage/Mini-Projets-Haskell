module Agregeable where

class Agregeable a where
 neutre :: a
 operation :: a -> a -> a

instance Agregeable Int where
 neutre = 0
 operation = (+)
--il faut forcer le type Int dans la definition de la liste, sous peine d'avoir une erreur "ambigous type variable"

instance Agregeable Bool where
 neutre = False
 operation = (||)

instance Agregeable [a] where
 neutre = []
 operation = (++)
--l'operation sur les listes pour faire de [a] une instance de Agregeable est la concatenation

cumule :: Agregeable a => [a] -> a
cumule [] = neutre
cumule [x] = operation neutre x
cumule (x:xs) = operation x (cumule xs)
--Si on passe une liste vide d'entiers, cumule renvoie 0 (il faut forcer le type avec ::[Int] sous peine de type ambigu)
--Si on passe une liste de listes vides, cumule renvoie une liste vide (sans besoin de forcer le type)
--Si on passe une liste non-vide, on realise l'operation avec l'element neutre et le premier element, puis ce resultat avec le second element, etc

