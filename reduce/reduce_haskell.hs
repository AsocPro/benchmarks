import Data.List (foldl')
import System.Environment (lookupEnv)

get :: Maybe String -> Int -> Int
get (Just a) _     = read a::Int
get Nothing defVal = defVal

main :: IO ()
main = do
  envLimit <- lookupEnv "LIMIT"
  print $ foldl' (+) 0 [0..get envLimit 999999]
