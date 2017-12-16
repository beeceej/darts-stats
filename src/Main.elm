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
    ToPlayerView -> updateCurrentView ToPlayerView model
    ToGameTypeView -> updateCurrentView ToGameTypeView model
    ToAggregateView -> updateCurrentView ToAggregateView model
    NoOp -> model
    
-- VIEW

view : App.State -> Html Msg
view model =
  View.render model
