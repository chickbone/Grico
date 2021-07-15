module Main where

import Control.Monad
import Control.Monad.State
import Grico.Janken
import Lib
import System.Random

count = 10

main :: IO ()
main = do
  x <- replicateM count $ randomRIO (0 :: Int, 2)
  y <- replicateM count $ randomRIO (0 :: Int, 2)
  let xs = toEnum <$> x :: [Hand]
  let ys = toEnum <$> y :: [Hand]
  print $ zipWith janken xs ys
