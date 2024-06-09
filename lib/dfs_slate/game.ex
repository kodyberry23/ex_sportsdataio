defmodule ExSportsdataio.DfsSlate.Game do
  @moduledoc """
  A struct representing a DFS Slate Game.
  """

  @typedoc "A DFS Slate Game"
  @type t() :: %__MODULE__{
          slate_game_id: integer(),
          slate_id: integer(),
          game_id: integer(),
          game: map(),
          operator_game_id: integer(),
          removed_by_operator: boolean()
        }

  @derive [Poison.Encoder]
  defstruct slate_game_id: nil,
            slate_id: nil,
            game_id: nil,
            game: nil,
            operator_game_id: nil,
            removed_by_operator: nil
end
