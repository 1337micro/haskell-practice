main :: IO ()
main = print (lastEle [3,2,4,2, 8] 4)

lastEle :: (Num a, Eq b, Num b) => [a] -> b -> a
lastEle xs index
  | index == 1 = head xs
  | otherwise = lastEle (tail xs) (index - 1)

{-
  Could not deduce (Eq a) arising from a use of `=='
  from the context (Num a)
    bound by the type signature for lastEle :: Num a => [a] -> a -> a
    at 3\3.hs:4:12-35
  Possible fix:
    add (Eq a) to the context of
      the type signature for lastEle :: Num a => [a] -> a -> a
  In the expression: index == 1
  In a stmt of a pattern guard for
                 an equation for `lastEle':
    index == 1
  In an equation for `lastEle':
      lastEle xs index
        | index == 1 = head xs
        | otherwise = lastEle (tail xs) (index - 1)
        -}
