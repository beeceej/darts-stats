module State.PlayerStats exposing (PlayerStats, PlayerStat, init, initList)

import State.StandardStats as StdStats exposing (..)
import List


type alias PlayerStat =
    { id : String
    , playerName : String
    , elo : Int
    , games : Int
    , wins : Int
    , losses : Int
    , dartsThrown : Int
    , standardStats : StandardStats
    }


type alias PlayerStats =
    List PlayerStat


init : PlayerStat
init =
    { id = ""
    , playerName = "Empty"
    , elo = 0
    , games = 0
    , wins = 0
    , losses = 0
    , dartsThrown = 0
    , standardStats = StdStats.init
    }


findById : String -> PlayerStats -> PlayerStats
findById id p =
    List.filterMap (\p -> isSameId id p) p


isSameId id p =
    case id == p.id of
        True ->
            Just p

        False ->
            Nothing


initList : Int -> PlayerStats
initList n =
    List.repeat n init
