module State.Model.Player exposing (..)

import State.Model.O1Stats as O1Stats exposing (..)
import State.Model.CricketStats as CricketStats exposing (..)

type alias Player = 
  { id: String
  , name : String
  , elo : Int
  , totalDartsThrown : Int
  , totalGamesPlayed : Int
  , winCount : Int
  , lossCount : Int
  , o1Stats : O1Stats.O1Stats
  , cricketStats : CricketStats.CricketStats
  }
  
bigListOfUsers : List Player
bigListOfUsers = 
  [
    { id = "1"
    , name = "Chet"
    , elo = 123
    , totalDartsThrown = 1234
    , totalGamesPlayed = 1033
    , winCount = 1
    , lossCount = 1032
    , o1Stats = 
      { gamesPlayed = 999
      , wins = 90
      , losses = 809
      , highestRound = 1
      , dartsThrown = 123
      , doubleOutPercentage = 234
      , singleOutPercentage = 1234
      {--,--}
      , bustPercentage = 100
      },
    cricketStats =
      { gamesPlayed = 11
      , wins = 12
      , losses = 122
      , dartsThrown = 324
      , marksPerRound = 233
      }
    },
    { id = "1"
    , name = "Chet"
    , elo = 123
    , totalDartsThrown = 1234
    , totalGamesPlayed = 1033
    , winCount = 1
    , lossCount = 1032
    , o1Stats = 
      { gamesPlayed = 999
      , wins = 90
      , losses = 809
      , highestRound = 1
      , dartsThrown = 123
      , doubleOutPercentage = 234
      , singleOutPercentage = 1234
      {--,--}
      , bustPercentage = 100
      },
    cricketStats =
      { gamesPlayed = 11
      , wins = 12
      , losses = 122
      , dartsThrown = 324
      , marksPerRound = 233
      }
    },
    { id = "1"
    , name = "Chet"
    , elo = 123
    , totalDartsThrown = 1234
    , totalGamesPlayed = 1033
    , winCount = 1
    , lossCount = 1032
    , o1Stats = 
      { gamesPlayed = 999
      , wins = 90
      , losses = 809
      , highestRound = 1
      , dartsThrown = 123
      , doubleOutPercentage = 234
      , singleOutPercentage = 1234
      {--,--}
      , bustPercentage = 100
      },
    cricketStats =
      { gamesPlayed = 11
      , wins = 12
      , losses = 122
      , dartsThrown = 324
      , marksPerRound = 233
      }
    },
    { id = "1"
    , name = "Chet"
    , elo = 123
    , totalDartsThrown = 1234
    , totalGamesPlayed = 1033
    , winCount = 1
    , lossCount = 1032
    , o1Stats = 
      { gamesPlayed = 999
      , wins = 90
      , losses = 809
      , highestRound = 1
      , dartsThrown = 123
      , doubleOutPercentage = 234
      , singleOutPercentage = 1234
      {--,--}
      , bustPercentage = 100
      },
    cricketStats =
      { gamesPlayed = 11
      , wins = 12
      , losses = 122
      , dartsThrown = 324
      , marksPerRound = 233
      }
    },
    { id = "1"
    , name = "Chet"
    , elo = 123
    , totalDartsThrown = 1234
    , totalGamesPlayed = 1033
    , winCount = 1
    , lossCount = 1032
    , o1Stats = 
      { gamesPlayed = 999
      , wins = 90
      , losses = 809
      , highestRound = 1
      , dartsThrown = 123
      , doubleOutPercentage = 234
      , singleOutPercentage = 1234
      {--,--}
      , bustPercentage = 100
      },
    cricketStats =
      { gamesPlayed = 11
      , wins = 12
      , losses = 122
      , dartsThrown = 324
      , marksPerRound = 233
      }
    },
    { id = "1"
    , name = "Chet"
    , elo = 123
    , totalDartsThrown = 1234
    , totalGamesPlayed = 1033
    , winCount = 1
    , lossCount = 1032
    , o1Stats = 
      { gamesPlayed = 999
      , wins = 90
      , losses = 809
      , highestRound = 1
      , dartsThrown = 123
      , doubleOutPercentage = 234
      , singleOutPercentage = 1234
      {--,--}
      , bustPercentage = 100
      },
    cricketStats =
      { gamesPlayed = 11
      , wins = 12
      , losses = 122
      , dartsThrown = 324
      , marksPerRound = 233
      }
    }
  ]
