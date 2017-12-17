module State.PlayerStats exposing (PlayerStats, PlayerStat, init, initList)

import State.StandardStats as StdStats exposing (..)
import Array

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

getNth : PlayerStats -> Int -> PlayerStats
getNth p n =
  case List.length p < n of
    True -> 
      case Array.get (n - (List.length p)) (Array.fromList p) of
        Nothing ->  []
        Just val -> [val]
    False -> 
      case Array.get n (Array.fromList p) of
          Nothing -> []
          Just val -> [val]
      
init : PlayerStat
init = 
  {  id = ""
  , playerName = "Empty"
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


test : List -> List
test = List.