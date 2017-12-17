module Main exposing (..)

import Html exposing (Html)
import State.App as App exposing (..)
import Messages.Messages as Messages exposing (..)
import View.View as View exposing (..)

main =
  Html.beginnerProgram { model = model, view = view, update = update }


type alias Model = App.State

model : Model
model = App.init


-- UPDATE

update : Msg -> Model -> Model
update msg model =
  case msg of
    Msg.ToPlayerView ->
      updateCurrentView Msg.ToPlayerView model
    Msg.ToGameTypeView ->
      updateCurrentView Msg.ToGameTypeView model
    Messages.ToAggregateView ->
      updateCurrentView Msg.ToAggregateView model
    
-- VIEW

view : App.State -> Html Msg
view model =
  View.render model
