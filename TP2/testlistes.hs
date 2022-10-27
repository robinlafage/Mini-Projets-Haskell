:set prompt ""
:load listes.hs
print"BEGIN"
liste_vide = Vide
liste = Cons 2 (Cons 8 (Cons 6 Vide))
print "liste_vide = Vide"
print "liste = Cons 2 (Cons 8 (Cons 6 Vide))"
print "---------"
print "vide liste_vide ="
vide liste_vide
print "---------"
print "premier liste ="
premier liste
print "---------"
print "reste liste ="
reste liste
print "---------"
print "longueur liste ="
longueur liste
print "---------"
print "dernier liste ="
dernier liste
print "---------"
print "applique ((*) 2)  liste ="
applique ((*) 2) liste
print "---------"
print "ajoute 3 liste ="
ajoute 3 liste
print "---------"
print "renverse liste ="
renverse liste
print"END"
:quit
