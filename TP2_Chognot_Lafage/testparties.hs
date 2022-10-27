:set prompt ""
:load parties.hs
print "BEGIN"
ensemble_vide=[]
print "ensemble_vide=[]"
ensemble1 = [1,2]
print "ensemble1 = [1,2]"
ensemble2 = [3,8,5]
print "ensemble2 = [3,8,5]"
print "-------------------"
print "parties ensemble_vide ="
parties ensemble_vide
print "-------------------"
print "parties ensemble1 ="
parties ensemble1
print "-------------------"
print "parties ensemble2 ="
parties ensemble2
print "-------------------"
print "combinaison ensemble1 ="
combinaison 2 ensemble1
print "-------------------"
print "combinaison ensemble2 ="
combinaison 2 ensemble2
print "-------------------"
print "npart 2 2 ="
npart 2 2
print "-------------------"
print "npart 3 2 ="
npart 3 2
print"END"
:quit
