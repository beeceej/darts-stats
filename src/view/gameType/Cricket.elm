module View.GameType.Cricket exposing (..)

import State.Model.CricketStats exposing (..)
import Html exposing (Html, button, div, text, ul, li, span, h2)

renderCricketStats : CricketStats -> Html msg
renderCricketStats s =
  div [] [
    h2 [] [text "--Cricket Stats--"]
  , div [] [text ("Wins: " ++ (toString s.wins))]
  , div [] [text ("Games played: " ++ (toString s.gamesPlayed))]
  , div [] [text ("Losses: " ++ (toString s.losses))]
  , div [] [text ("Darts Thrown: " ++ (toString s.dartsThrown))]
  , div [] [text ("Marks Per Round: " ++ (toString s.marksPerRound))]
  ]