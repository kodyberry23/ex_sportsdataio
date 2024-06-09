defmodule ExSportsdataio.MLB.Game.Info do
  defstruct [
    :game_id,
    :season,
    :season_type,
    :day,
    :date_time,
    :status,
    :away_team_id,
    :home_team_id,
    :away_team_name,
    :home_team_name,
    :global_game_id,
    :global_away_team_id,
    :global_home_team_id,
    :pregame_odds,
    :live_odds,
    :home_team_score,
    :away_team_score,
    :total_score,
    :home_rotation_number,
    :away_rotation_number,
    :alternate_market_pregame_odds
  ]

  @type t :: %__MODULE__{
          game_id: integer(),
          season: integer(),
          season_type: integer(),
          day: String.t() | nil,
          date_time: String.t() | nil,
          status: String.t() | nil,
          away_team_id: integer() | nil,
          home_team_id: integer() | nil,
          away_team_name: String.t() | nil,
          home_team_name: String.t() | nil,
          global_game_id: integer(),
          global_away_team_id: integer() | nil,
          global_home_team_id: integer() | nil,
          pregame_odds: [ExSportsdataio.MLB.Game.Odd.t()] | nil,
          live_odds: [ExSportsdataio.MLB.Game.Odd.t()] | nil,
          home_team_score: integer() | nil,
          away_team_score: integer() | nil,
          total_score: integer() | nil,
          home_rotation_number: integer() | nil,
          away_rotation_number: integer() | nil,
          alternate_market_pregame_odds: [ExSportsdataio.MLB.Game.Odd.t()] | nil
        }
end
