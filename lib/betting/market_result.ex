defmodule ExSportsdataio.Betting.MarketResult do
  defstruct [
    :betting_market_id,
    :betting_market_type_id,
    :betting_market_type,
    :betting_bet_type_id,
    :betting_bet_type,
    :betting_period_type_id,
    :betting_period_type,
    :name,
    :team_id,
    :team_key,
    :player_id,
    :player_name,
    :betting_outcome_results,
    :is_market_resulting_supported
  ]

  @type t :: %__MODULE__{
          betting_market_id: integer(),
          betting_market_type_id: integer(),
          betting_market_type: String.t() | nil,
          betting_bet_type_id: integer(),
          betting_bet_type: String.t() | nil,
          betting_period_type_id: integer(),
          betting_period_type: String.t() | nil,
          name: String.t() | nil,
          team_id: integer() | nil,
          team_key: String.t() | nil,
          player_id: integer() | nil,
          player_name: String.t() | nil,
          betting_outcome_results: [ExSportsdataio.Betting.OutcomeResult.t()] | nil,
          is_market_resulting_supported: boolean()
        }
end
