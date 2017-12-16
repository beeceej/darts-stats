module State.PlayerStats exposing (PlayerStats, PlayerStat, init, initList)

import State.StandardStats as StdStats exposing (..)

type alias PlayerStat =
  {
    id: String
  , playerName: String
  , elo: Int
  , games: Int
  , wins: Int
  , losses: Int
  , dartsThrown: Int
  , standardStats: StandardStats
  }

type alias PlayerStats = List PlayerStat

init : PlayerStat
init = 
  {  id = ""
  , playerName = ""
  , elo = 0
  , games = 0
  , wins = 0
  , losses = 0
  , dartsThrown = 0
  , standardStats = StdStats.init
  }

initList : Int -> PlayerStats
initList n =
  List.repeat n init