module View.View exposing (render)

import Html exposing (Html, button, div, text, ul, li, span)
import Html.Events exposing (onClick)
import State.Messages as Messages exposing (Msg(..))

import State.App as App exposing (..)
import View.Player as PlayerView exposing (..)
import State.Player as PlayerState exposing(..)


render : App.State -> Html Msg
render model =
    case model.currentView of
        ByGameType ->
            renderByGameView model

        ByPlayer ->
            renderByPlayerView model

        ByAggregate ->
            renderByAggregateView model


renderByGameView : App.State -> Html Msg
renderByGameView model =
    renderContainer model


renderByPlayerView : App.State -> Html Msg
renderByPlayerView m =
    div []
        [ (renderContainer m)
        , div [] (List.map PlayerView.render m.players)
        , PlayerView.renderStats (PlayerState.findById m.currentPlayer m.players)
        ]


renderByAggregateView : App.State -> Html Msg
renderByAggregateView model =
    renderContainer model


renderContainer : App.State -> Html Msg
renderContainer model =
    div []
        [ button [ onClick ToPlayerView ] [ text "Player View" ]
        , button [ onClick ToGameTypeView ] [ text "Game View" ]
        , button [ onClick ToAggregateView ] [ text "Aggregate View" ]
        , renderData model
        ]


renderData : App.State -> Html Msg
renderData model =
    div []
        [ text (toString model.currentView)
        , div [] (List.map (PlayerView.render) model.players)
        ]
