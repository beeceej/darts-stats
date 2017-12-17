module View.GameType.Cricket exposing (render)

import State.CricketStats exposing (CricketStats)
import Html exposing (Html, span)

render : CricketStats -> Html msg
render s =
  span [] []