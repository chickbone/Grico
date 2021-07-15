module Grico.Janken where

data Hand
  = Rock
  | Scissor
  | Paper
  deriving (Show, Read, Eq, Enum)

data Janken
  = LW Hand
  | RW Hand
  | Aiko
  deriving (Show, Read, Eq)

Rock `janken` Scissor = LW Rock
Rock `janken` Paper = RW Paper
Scissor `janken` Paper = LW Scissor
Scissor `janken` Rock = RW Rock
Paper `janken` Rock = LW Paper
Paper `janken` Scissor = RW Scissor
_ `janken` _ = Aiko
