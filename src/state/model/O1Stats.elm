module State.Model.O1Stats exposing (..)

type alias O1Stats = 
  {
    gamesPlayed: Int
  , wins: Int
  , losses: Int
  , highestRound: Int
  , dartsThrown: Int
  , doubleOutPercentage: Int
  , singleOutPercentage: Int
  {--,--}
  , bustPercentage: Int 
 }
