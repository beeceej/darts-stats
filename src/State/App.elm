module State.App exposing (..)

import State.Messages exposing (Msg(..))
import State.Player as Player exposing (Stats)


type alias State =
    { currentView : ViewType
    , players : List Stats
    , currentPlayer : String
    }


type ViewType
    = ByPlayer
    | ByGameType
    | ByAggregate


update : Msg -> State -> State
update msg app =
    case msg of
        ToPlayerView ->
            { currentView = ByPlayer, players = app.players, currentPlayer = app.currentPlayer }

        ToGameTypeView ->
            { currentView = ByGameType, players = app.players, currentPlayer = app.currentPlayer }

        ToAggregateView ->
            { currentView = ByAggregate, players = app.players, currentPlayer = app.currentPlayer }

        ShowPlayer id ->
            { currentView = ByPlayer, players = app.players, currentPlayer = id }

        NoOp ->
            app


init : State
init =
    { currentView = ByPlayer
    , players = Player.initRandom
    , currentPlayer = ""
    }

