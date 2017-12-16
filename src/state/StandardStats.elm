module State.StandardStats exposing (StandardStats, init)

type alias StandardStats = 
  {
    games: Int
  , wins: Int
  , losses: Int
  , highestRound: Int
  , highestDoubleOut: Int
  , highestSingleOut: Int
  , dartsThrown: Int
  , singleOutPercent: Int
  , doubleOutPercent: Int
  , bustPercent: Int
  , twentyHitRate: Int
  , bullHitRate: Int
 }


init : StandardStats
init =
  { games = 0
  , wins = 0
  , losses = 0
  , highestRound = 0
  , highestDoubleOut = 0
  , highestSingleOut = 0
  , dartsThrown = 0
  , singleOutPercent = 0
  , doubleOutPercent = 0
  , bustPercent = 0
  , twentyHitRate = 0
  , bullHitRate = 0
  }