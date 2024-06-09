defmodule ExSportsdataio.NBA.Game do
  @moduledoc """
  Struct for NBA Game data.
  """

  @type t :: %__MODULE__{
          gameid: integer(),
          season: integer(),
          season_type: integer(),
          status: String.t() | nil,
          day: any(),
          datetime: any(),
          away_team: String.t(),
          home_team: String.t(),
          away_team_score: integer() | nil,
          home_team_score: integer() | nil,
          period: integer() | nil,
          time_remaining_minutes: integer() | nil,
          time_remaining_seconds: integer() | nil,
          point_spread: float() | nil,
          over_under: float() | nil,
          stadium: String.t() | nil,
          channel: String.t() | nil,
          attendance: integer() | nil
        }

  defstruct [
    :gameid,
    :season,
    :season_type,
    :status,
    :day,
    :datetime,
    :away_team,
    :home_team,
    :away_team_score,
    :home_team_score,
    :period,
    :time_remaining_minutes,
    :time_remaining_seconds,
    :point_spread,
    :over_under,
    :stadium,
    :channel,
    :attendance
  ]
end
