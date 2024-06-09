defmodule ExSportsdataio.MLB.Player.Prop do
  defstruct [
    :player_id,
    :game_id,
    :name,
    :opponent,
    :team,
    :date_time,
    :description,
    :over_under,
    :over_payout,
    :under_payout,
    :bet_result,
    :stat_result
  ]

  @type t :: %__MODULE__{
          player_id: integer(),
          game_id: integer(),
          name: String.t() | nil,
          opponent: String.t() | nil,
          team: String.t() | nil,
          date_time: String.t() | nil,
          description: String.t() | nil,
          over_under: float(),
          over_payout: integer(),
          under_payout: integer(),
          bet_result: String.t() | nil,
          stat_result: float() | nil
        }
end
