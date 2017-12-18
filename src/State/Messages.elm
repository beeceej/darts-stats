module State.Messages exposing (Msg(..))


type Msg
    = ToPlayerView
    | ToGameTypeView
    | ToAggregateView
    | ShowPlayer String
    | NoOp
