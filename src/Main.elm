module Main exposing (..)

import Html exposing (Html)
import State.App as App exposing (update, init, update)
import State.Messages as Messages exposing (Msg)
import View.View as View exposing (..)


main =
    Html.beginnerProgram { model = model, view = view, update = update }


type alias Model =
    App.State


model : Model
model =
    App.init



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    App.update msg model



-- VIEW


view : App.State -> Html Msg
view model =
    View.render model
