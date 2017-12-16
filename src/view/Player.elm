module View.Player exposing (..)

import Html exposing (Html, button, div, text, ul, li, span, h1, h2)
import State.Model.Player as Player exposing (..)
import View.GameType.Cricket as CricketView exposing (..)
import View.GameType.O1 as O1View exposing (..)

renderStatsForPlayer : Player.Player -> Html msg
renderStatsForPlayer p =
  div [] [
    div [] [ h1 [] [ text (p.name ++ " | Overview")]]
  , div [] [text ("elo: " ++ toString p.elo)]
  , div [] [text ("Total Darts Thrown: " ++ toString p.totalDartsThrown)]
  , div [] [text ("Total Games Played: " ++ toString p.totalGamesPlayed)]
  , div [] [text ("Win Count: " ++ toString p.winCount)]
  , div [] [text ("Loss Count: " ++ toString p.lossCount)]
  , renderO1Stats p.o1Stats
  , renderCricketStats p.cricketStats
  ]

renderPlayers : List Player.Player -> Html msg
renderPlayers players =
  div [] (
    List.map (renderPlayer) players
  )

renderPlayer : Player.Player -> Html msg
renderPlayer p =
  div [] [
    div [] [ text ("Player: " ++ p.name) ]
  ]
