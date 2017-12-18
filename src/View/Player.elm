module View.Player exposing (render, renderStats)

import Html exposing (Html, text, li, a, button, div)
import Html.Events exposing (onClick)
import State.Player as Player exposing (Stats, init, initList, findById)
import State.Messages exposing (Msg(..))


render : Player.Stats -> Html Msg
render m =
    renderPlayerStats m


renderPlayerStats : Player.Stats -> Html Msg
renderPlayerStats m =
    button []
        [ a [ onClick (ShowPlayer m.id) ] [ text m.id ]
        ]

renderStats : Player.Stats -> Html Msg
renderStats p = 
    div []
    [ text (toString p)
    ]