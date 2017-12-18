module State.Player exposing (Stats, init, initList, initRandom, findById)

import State.StandardStats as StdStats exposing (..)
import List


type alias Stats =
    { id : String
    , playerName : String
    , elo : Int
    , games : Int
    , wins : Int
    , losses : Int
    , dartsThrown : Int
    , standardStats : StandardStats
    }


init : Stats
init =
    { id = "A"
    , playerName = "Brian"
    , elo = 0
    , games = 0
    , wins = 0
    , losses = 0
    , dartsThrown = 0
    , standardStats = StdStats.init
    }


findById : String -> List Stats -> Stats
findById id p =
    case List.head (List.filterMap (\p -> isSameId id p) p) of
        Nothing ->
            init
        Just s ->
            s
            


isSameId id p =
    case id == p.id of
        True ->
            Just p

        False ->
            Nothing


initList : Int -> List Stats
initList n =
    List.repeat n init

initRandom = 
    [
        { id = "asdf"
    , playerName = ""
    , elo = 4
    , games = 3
    , wins = 2
    , losses = 1
    , dartsThrown = 0
    , standardStats = StdStats.init
    },
    { id = "aasdf234413sdf"
    , playerName = ""
    , elo = 4
    , games = 3
    , wins = 2
    , losses = 1
    , dartsThrown = 0
    , standardStats = StdStats.init
    },
    { id = "92349"
    , playerName = ""
    , elo = 4
    , games = 3
    , wins = 2
    , losses = 1
    , dartsThrown = 0
    , standardStats = StdStats.init
    }
    ]
