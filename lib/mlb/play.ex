defmodule ExSportsdataio.MLB.Play do
  @moduledoc """
  Struct for MLB Play data.
  """

  @type t :: %__MODULE__{
          play_id: integer(),
          inning_id: integer(),
          inning_number: integer() | nil,
          inning_half: String.t() | nil,
          play_number: integer() | nil,
          inning_batter_number: integer() | nil,
          away_team_runs: integer() | nil,
          result: String.t() | nil,
          number_of_outs_on_play: integer() | nil,
          runs_batted_in: integer() | nil,
          at_bat: boolean() | nil,
          strikeout: boolean() | nil,
          walk: boolean() | nil,
          hit: boolean() | nil,
          out: boolean() | nil,
          sacrifice: boolean() | nil,
          error: boolean() | nil,
          updated: String.t() | nil,
          description: String.t() | nil,
          pitches: list() | nil,
          runner1_id: integer() | nil
        }

  defstruct [
    :play_id,
    :inning_id,
    :inning_number,
    :inning_half,
    :play_number,
    :inning_batter_number,
    :away_team_runs,
    :result,
    :number_of_outs_on_play,
    :runs_batted_in,
    :at_bat,
    :strikeout,
    :walk,
    :hit,
    :out,
    :sacrifice,
    :error,
    :updated,
    :description,
    :pitches,
    :runner1_id
  ]
end
