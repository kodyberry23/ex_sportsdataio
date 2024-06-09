defmodule ExSportsdataio.Inning do
  @moduledoc """
  Struct for MLB Inning data.
  """

  @type t :: %__MODULE__{
          inning_id: integer(),
          game_id: integer(),
          inning_number: integer(),
          away_team_runs: integer() | nil,
          home_team_runs: integer() | nil
        }

  @derive [Poison.Encoder]
  defstruct [
    :inning_id,
    :game_id,
    :inning_number,
    :away_team_runs,
    :home_team_runs
  ]
end
