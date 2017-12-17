module Main exposing (..)

import Html exposing (Html)
import State.App as App exposing (updateView, init)
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
    ToPlayerView -> updateView ToPlayerView model
    ToGameTypeView -> updateView ToGameTypeView model
    ToAggregateView -> updateView ToAggregateView model
    PrevPlayer -> updateView ToAggregateView model
    NextPlayer -> updateView ToAggregateView model
    NoOp -> model
    
-- VIEW

view : App.State -> Html Msg
view model =
  View.render model
