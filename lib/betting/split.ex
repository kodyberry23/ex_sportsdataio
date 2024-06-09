defmodule ExSportsdataio.Betting.Split do
  defstruct [
    :betting_market_split_id,
    :betting_market_id,
    :betting_outcome_type_id,
    :betting_outcome_type,
    :bet_percentage,
    :money_percentage,
    :created,
    :last_seen
  ]

  @type t :: %__MODULE__{
          betting_market_split_id: integer(),
          betting_market_id: integer(),
          betting_outcome_type_id: integer() | nil,
          betting_outcome_type: String.t() | nil,
          bet_percentage: integer() | nil,
          money_percentage: integer() | nil,
          created: String.t() | nil,
          last_seen: String.t() | nil
        }
end
