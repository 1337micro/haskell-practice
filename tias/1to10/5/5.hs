main = print(rev [1,2,3,4])

rev :: [a] -> [a]
rev xs
  | length xs == 1 = xs
  | otherwise = last xs:rev(init xs)
