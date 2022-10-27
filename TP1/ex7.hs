#!/usr/bin/env ghci

repeter :: Int -> Char -> String
repeter 1 c = c:""
repeter n c = c:repeter (n-1) c

etoiles :: Int -> String -> String
etoiles 1 s = ['*'] ++ s ++ ['*']
etoiles n s = ['*'] ++ etoiles (n-1) s ++ ['*']

slashes :: String -> String
slashes s = ['/'] ++ s ++ ['/']

commentaireC :: String -> String
commentaireC = slashes.etoiles 12