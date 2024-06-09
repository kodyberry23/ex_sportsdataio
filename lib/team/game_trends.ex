defmodule ExSportsdataio.Team.GameTrends do
  defstruct [
    :scope,
    :team_id,
    :team,
    :opponent_id,
    :opponent,
    :wins,
    :losses,
    :ties,
    :wins_against_the_spread,
    :losses_against_the_spread,
    :pushes_against_the_spread,
    :overs,
    :unders,
    :over_under_pushes,
    :average_score,
    :average_opponent_score
  ]

  @type t :: %__MODULE__{
          scope: String.t() | nil,
          team_id: integer(),
          team: String.t() | nil,
          opponent_id: integer() | nil,
          opponent: String.t() | nil,
          wins: integer(),
          losses: integer(),
          ties: integer(),
          wins_against_the_spread: integer() | nil,
          losses_against_the_spread: integer() | nil,
          pushes_against_the_spread: integer() | nil,
          overs: integer() | nil,
          unders: integer() | nil,
          over_under_pushes: integer() | nil,
          average_score: float() | nil,
          average_opponent_score: float() | nil
        }
end
