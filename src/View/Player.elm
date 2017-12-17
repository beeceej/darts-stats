module View.Player exposing (render)

import Html exposing (Html, button, div, text, ul, li, span, h1, h2)
import State.PlayerStats as PlayerStatsModel exposing (PlayerStats, PlayerStat, init, initList)
import Messages.Messages exposing (Msg)


render : PlayerStatsModel.PlayerStat -> Html Msg
render m =
    renderPlayerStats m


renderPlayerStats : PlayerStatsModel.PlayerStat -> Html Msg
renderPlayerStats m =
    h2 [] [ text m.playerName ]
