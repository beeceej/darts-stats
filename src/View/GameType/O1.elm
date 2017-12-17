module View.GameType.O1 exposing (..)

import State.Model.O1Stats exposing (..)
import Html exposing (Html, button, div, text, ul, li, span, h2)

renderO1Stats : O1Stats -> Html msg
renderO1Stats s =
    div [] [
      h2 [] [text "O1 Stats"]
    , div [] [text ("Games played: " ++ (toString s.gamesPlayed))]
    , div [] [text ("Wins: " ++ (toString s.wins))]
    , div [] [text ("Losses: " ++ (toString s.losses))]
    , div [] [text ("Double Out percentage: " ++ (toString s.doubleOutPercentage))]
    , div [] [text ("Single Out percentage: " ++ (toString s.singleOutPercentage))]
    , div [] [text ("Darts Thrown: " ++ (toString s.dartsThrown))]
    , div [] [text ("Bust Percentage " ++ (toString s.bustPercentage))]
  ]