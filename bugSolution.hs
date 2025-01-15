```haskell
import Data.List (sort)
import Data.Ord (comparing)

-- Define a data type with an ordering
data MyData = MyData { value :: Int, label :: String }
    deriving (Show, Eq)

instance Ord MyData where
    compare a b = compare (value a) (value b)  -- or use comparing

main :: IO ()
main = do
  let myDataList = [MyData 1 "a", MyData 3 "c", MyData 2 "b"]
  let sortedList = sort myDataList
  print sortedList

-- Alternative using comparing for cleaner syntax
main2 :: IO ()
main2 = do
  let myDataList = [MyData 1 "a", MyData 3 "c", MyData 2 "b"]
  let sortedList = sortOn comparing value myDataList
  print sortedList
```