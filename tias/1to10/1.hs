main = print lastEle [3,2,4,2]

lastEle :: (Num a) => [a] -> a
lastEle xs
  | length xs == 1 = head xs
  | otherwise lastEle (tail xs)
