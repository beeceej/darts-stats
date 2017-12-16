module Api.Api exposing (..)

import Api.Env as Env exposing (Env)

playerStatsURL: Env -> String
playerStatsURL env =
  case env of
      Env.PROD -> "darts-api:8080"
      Env.DEV -> "chets ip:8080"
      Env.LOCAL -> "chets ip:8080"
