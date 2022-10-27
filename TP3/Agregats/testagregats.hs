:set prompt ""
:load agregats.hs
print "BEGIN"
liste_vide = []
liste = [9,13,7,5,2,11,8,1,18,4]
print "liste = [9,13,7,5,2,11,8,1,18,4]"
liste_2 = [4.2,3.5,7,2.1,3,8.92]
print "liste_2 = [4.2,3.5,7,2.1,3,8.92]"
print "----------"
print "cumule (+) 2 liste_vide ="
cumule (+) 2 liste_vide
print "----------"
print "cumule (+) 2 liste ="
cumule (+) 2 liste
print "----------"
print "somme2 liste_vide ="
somme2 liste_vide
print "----------"
print "somme2 liste ="
somme2 liste
print "----------"
print "somme liste_vide ="
somme liste_vide
print "----------"
print "somme liste_2 ="
somme liste_2
print "----------"
print "Tests Agregeable.hs"

:load Agregeable.hs
print "liste_int = [9,13,7,5,2,11,8,1,18,4]"
liste_int = ([9,13,7,5,2,11,8,1,18,4]::[Int])
print "liste_bool = [True,True,True,False,False,True]"
liste_bool = [True,True,True,False,False,True]
print "liste_liste = [[2,8,4],[7,1,6],[3,5,1]]"
liste_liste = [[2,8,4],[7,1,6],[3,5,1]]
print "liste_liste_vide = [[],[],[]]"
liste_liste_vide = [[],[],[]]
print "----------"
print "cumule liste_int = "
cumule liste_int
print "----------"
print "cumule liste_bool = " 
cumule liste_bool
print "----------"
print "cumule liste_liste = "
cumule liste_liste
print "----------"
print "cumule liste_vide = "
cumule ([]::[Int])
print "----------"
print "cumule liste_liste_vide"
cumule liste_liste_vide
print"END"
:quit


