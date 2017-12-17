module State.App exposing (..)

import Messages.Messages as Messages exposing (..)
import State.PlayerStats as PlayerStats exposing (PlayerStats)


type alias State =
    { currentView : ViewType
    , players : PlayerStats
    }


type ViewType
    = ByPlayer
    | ByGameType
    | ByAggregate


updateView : Msg -> State -> State
updateView msg app =
    case msg of
        ToPlayerView ->
            { currentView = ByPlayer, players = app.players }

        ToGameTypeView ->
            { currentView = ByGameType, players = app.players }

        ToAggregateView ->
            { currentView = ByAggregate, players = app.players }

        PrevPlayer ->
            { currentView = ByAggregate, players = app.players }

        NextPlayer ->
            { currentView = ByAggregate, players = app.players }

        NoOp ->
            app


init : State
init =
    { currentView = ByPlayer
    , players = PlayerStats.initList 100
    }
