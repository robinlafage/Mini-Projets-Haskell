module Set where

data Set a = Set [a] deriving Show

set :: [a] -> Set a
set l = Set l

set_difference :: (Eq a) => Set a -> Set a -> Set a
set_difference s1 (Set []) = s1
set_difference s1 (Set (x:xs)) = remove x (set_difference s1 (Set xs))

--On ne verifie pas le presence de doublons, ni dans la construction de l'ensemble (avec set), ni dans set_difference
--on pourrait s'occuper des doublons des la construction de l'ensemble, et les verifier dans set_difference

remove :: (Eq a) => a -> Set a -> Set a
remove x (Set []) = Set []
remove x (Set (u:us)) | x == u = Set us
                      | otherwise = Set (u:r)
                          where Set r = remove x (Set us)

--remove retire d'un ensemble le premier element egal a un autre element passe en parametre

grab :: Set a -> a
grab (Set (x:xs)) = x

remove_duplicates  ::  (Eq a) =>  Set a -> Set a
remove_duplicates (Set l) = Set (remove_duplicates_aux l)
  where  
    remove_duplicates_aux e@[] = e
    remove_duplicates_aux (a:reste) | elem a reste = remove_duplicates_aux reste
                                    | otherwise = a:(remove_duplicates_aux reste)
