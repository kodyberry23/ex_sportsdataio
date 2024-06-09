defmodule ExSportsdataio.MLB.Series do
  defstruct [
    :home_team_wins,
    :away_team_wins,
    :game_number,
    :max_length
  ]

  @type t :: %__MODULE__{
          home_team_wins: integer(),
          away_team_wins: integer(),
          game_number: integer(),
          max_length: integer()
        }
end
