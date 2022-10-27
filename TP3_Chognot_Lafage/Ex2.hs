quick_sort :: [Int] -> [Int]
quick_sort [] = []
quick_sort (x:xs) = (quick_sort [n | n <- xs , n <= x]) ++ [x] ++ (quick_sort [k | k <- xs , k > x ])
