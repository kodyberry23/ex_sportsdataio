defmodule ExSportsdataio.Betting.OutcomeResult do
  defstruct [
    :betting_outcome_id,
    :betting_result_type_id,
    :betting_result_type,
    :betting_outcome_type_id,
    :betting_outcome_type,
    :bet_value,
    :actual_value
  ]

  @type t :: %__MODULE__{
          betting_outcome_id: integer(),
          betting_result_type_id: integer() | nil,
          betting_result_type: String.t() | nil,
          betting_outcome_type_id: integer() | nil,
          betting_outcome_type: String.t() | nil,
          bet_value: float() | nil,
          actual_value: float() | nil
        }
end
