defmodule ExSportsdataio.MatchupTrends do
  defstruct [
    :upcoming_game,
    :team_trends,
    :team_matchup_trends,
    :opponent_matchup_trends,
    :previous_games
  ]

  @type t :: %__MODULE__{
          upcoming_game: ExSportsdataio.Game.t() | nil,
          team_trends: [ExSportsdataio.TeamTrends.t()] | nil,
          team_matchup_trends: [ExSportsdataio.TeamGameTrends.t()] | nil,
          opponent_matchup_trends: [ExSportsdataio.TeamGameTrends.t()] | nil,
          previous_games: [ExSportsdataio.Game.t()] | nil
        }
end
