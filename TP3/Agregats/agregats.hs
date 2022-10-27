cumule :: Num a => (a -> a -> a) -> a -> [a] -> a
cumule f i [] = i
cumule f i (x:xs) = f x (cumule f i xs)

somme2 :: [Int] -> Int
somme2 = cumule (+) 0

somme :: Num a => [a] -> a
somme = cumule (+) 0


