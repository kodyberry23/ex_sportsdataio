defmodule ExSportsdataio.DfsSlate.Player do
  @moduledoc """
  A struct representing a DFS Slate Player.
  """

  @type t() :: %__MODULE__{
          slate_player_id: integer(),
          slate_id: integer(),
          slate_game_id: integer(),
          player_id: integer(),
          player_game_projection_stat_id: integer(),
          operator_player_id: String.t(),
          operator_slate_player_id: String.t(),
          operator_player_name: String.t(),
          operator_position: String.t(),
          operator_salary: integer(),
          operator_roster_slots: [String.t()],
          removed_by_operator: boolean(),
          team: String.t(),
          team_id: integer()
        }

  @derive [Poison.Encoder]
  defstruct slate_player_id: nil,
            slate_id: nil,
            slate_game_id: nil,
            player_id: nil,
            player_game_projection_stat_id: nil,
            operator_player_id: nil,
            operator_slate_player_id: nil,
            operator_player_name: nil,
            operator_position: nil,
            operator_salary: nil,
            operator_roster_slots: [],
            removed_by_operator: nil,
            team: nil,
            team_id: nil
end
