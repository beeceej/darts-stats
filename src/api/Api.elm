module Api.Api exposing (playerStatsURL)

import Api.Env as Env exposing (Env)

playerStatsURL: Env -> String
playerStatsURL env =
  case env of
      DEV -> "darts-api:8080"
      PROD -> "chets ip:8080"
      LOCAL -> "chets ip:8080"
