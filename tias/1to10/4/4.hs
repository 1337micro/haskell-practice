main :: IO ()
main = print (lenList [3,2,4,2, 8])


lenList :: (Eq a, Num b, Eq b) =>[a] -> b
lenList xs
  | xs == [] = 0
  | otherwise = 1 + lenList (tail xs)
