#!/usr/bin/env ghci

data Couleur = Rouge | Vert | Bleu | Jaune | Orange | Violet deriving (Eq)

primaire :: Couleur -> Bool
primaire c = (c/=Jaune) && (c/=Orange) && (c/=Violet)

separePrimaire :: Couleur -> String
separePrimaire Rouge = "Rouge"
separePrimaire Vert = "Vert"
separePrimaire Bleu = "Bleu"
separePrimaire Jaune = "Bleu et Vert"
separePrimaire Orange = "Rouge et Jaune"
separePrimaire Violet = "Rouge et Bleu"