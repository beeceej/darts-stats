module State.App exposing (..)

import Messages.Messages as Messages exposing (StateMessage)
import State.Model.Player as Player

type alias State = 
  { currentView : ViewType
  ,  players : List Player.Player
  }

type ViewType =
  ByPlayer
  | ByGameType
  | ByAggregate

updateCurrentView : StateMessage -> State -> State
updateCurrentView msg app =
  case msg of
      Messages.ToPlayerView -> { currentView = ByPlayer, players = app.players }
      Messages.ToGameTypeView -> { currentView = ByGameType, players = app.players }
      Messages.ToAggregateView -> { currentView = ByAggregate, players = app.players }


init : State
init = 
  {
    currentView = ByPlayer
  , players = Player.bigListOfUsers
  }

  