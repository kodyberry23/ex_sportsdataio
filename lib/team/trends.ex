defmodule ExSportsdataio.Team.Trends do
  alias ExSportsdataio.MLB.Game, as: MlbGame
  alias ExSportsdataio.Team.GameTrends

  defstruct [
    :team,
    :team_id,
    :upcoming_game,
    :team_game_trends
  ]

  @type t :: %__MODULE__{
          team: String.t() | nil,
          team_id: integer() | nil,
          upcoming_game: MlbGame.t() | nil,
          team_game_trends: [GameTrends.t()] | nil
        }
end
