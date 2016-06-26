-- merge sort
import Data.List

mergesort :: (Ord a) => [a] -> [a]
mergesort list
  | (length list == 1) = list
  | (length list == 2) = minimum list:maximum list:[]
  | (length list >= 3) = sort (mergesort subArrayLeft) ++ (mergesort subArrayRight)
--  | otherwise
  where (subArrayLeft, subArrayRight) = splitAt middle list
        len = length list
        middle = quot len 2

_assort :: (Ord a) => [a] -> [a] -> [a]
_assort xs ys =
  sort xs ++ ys


main = print (mergesort [12, 1, 19, 3, 6, 18, 23])
