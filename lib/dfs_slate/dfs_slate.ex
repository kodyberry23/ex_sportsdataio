defmodule ExSportsdataio.DfsSlate do
  @moduledoc """
  A struct representing a DFS Slate.
  """
  alias ExSportsdataio.DfsSlate.Game
  alias ExSportsdataio.DfsSlate.Player

  @type t() :: %__MODULE__{
          slate_id: integer(),
          operator: String.t(),
          operator_slate_id: integer(),
          operator_name: String.t(),
          operator_day: String.t(),
          operator_start_time: String.t(),
          number_of_games: integer(),
          is_multi_day_slate: boolean(),
          removed_by_operator: boolean(),
          operator_game_type: String.t(),
          dfs_slate_games: [Game.t()],
          dfs_slate_players: [Player.t()],
          slate_roster_slots: [String.t()],
          salary_cap: integer() | nil
        }

  @derive [Poison.Encoder]
  defstruct slate_id: nil,
            operator: nil,
            operator_slate_id: nil,
            operator_name: nil,
            operator_day: nil,
            operator_start_time: nil,
            number_of_games: nil,
            is_multi_day_slate: nil,
            removed_by_operator: nil,
            operator_game_type: nil,
            dfs_slate_games: [],
            dfs_slate_players: [],
            slate_roster_slots: [],
            salary_cap: nil
end
