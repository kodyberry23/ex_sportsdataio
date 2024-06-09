defmodule ExSportsdataio.Betting.Market do
  defstruct [
    :betting_market_id,
    :betting_event_id,
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
    :created,
    :updated,
    :available_sportsbooks,
    :any_bets_available,
    :betting_outcomes,
    :consensus_outcomes
  ]

  @type t :: %__MODULE__{
          betting_market_id: integer(),
          betting_event_id: integer(),
          betting_market_type_id: integer() | nil,
          betting_market_type: String.t() | nil,
          betting_bet_type_id: integer() | nil,
          betting_bet_type: String.t() | nil,
          betting_period_type_id: integer() | nil,
          betting_period_type: String.t() | nil,
          name: String.t() | nil,
          team_id: integer() | nil,
          team_key: String.t() | nil,
          player_id: integer() | nil,
          player_name: String.t() | nil,
          created: String.t() | nil,
          updated: String.t() | nil,
          available_sportsbooks: [ExSportsdataio.Sportsbook.t()] | nil,
          any_bets_available: boolean() | nil,
          betting_outcomes: [ExSportsdataio.Betting.Outcome.t()] | nil,
          consensus_outcomes: [ExSportsdataio.ConsensusOutcome.t()] | nil
        }
end
