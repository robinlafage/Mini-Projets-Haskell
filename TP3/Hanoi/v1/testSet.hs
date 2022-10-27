:set prompt ""

:l Set.hs
:browse

print "BEGIN"
liste_int_1 = [4,7,5,14,19,6,0]
print "liste_int_1 = [4,7,5,14,19,6,0]"
liste_int_2 = [4,1,12,19,2,8,7]
print "liste_int_2 = [4,1,12,19,2,8,7]"
print "-------------------"
print "liste_int_1_set = set liste_int_1"
liste_int_1_set = set liste_int_1
set liste_int_1
print "-------------------"
print "liste_int_2_set = set liste_int_2"
liste_int_2_set = set liste_int_2
set liste_int_2
print "-------------------"
print "set_difference liste_int_1_set liste_int_2_set"
set_difference liste_int_1_set liste_int_2_set
print "-------------------"
print "grab liste_int_1_set"
grab liste_int_1_set
print "END"
:quit
