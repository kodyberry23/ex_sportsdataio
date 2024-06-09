defmodule ExSportsdataio.BettingOutcome do
  defstruct [
    :betting_outcome_id,
    :betting_market_id,
    :sports_book,
    :betting_outcome_type_id,
    :betting_outcome_type,
    :payout_american,
    :payout_decimal,
    :value,
    :participant,
    :is_available,
    :is_alternate,
    :created,
    :updated,
    :unlisted,
    :team_id,
    :player_id,
    :global_team_id,
    :sportsbook_url,
    :is_in_play,
    :sportsbook_market_id,
    :sportsbook_outcome_id
  ]

  @type t :: %__MODULE__{
          betting_outcome_id: integer() | nil,
          betting_market_id: integer() | nil,
          sports_book: ExSportsdataio.Sportsbook.t() | nil,
          betting_outcome_type_id: integer() | nil,
          betting_outcome_type: String.t() | nil,
          payout_american: integer() | nil,
          payout_decimal: float() | nil,
          value: float() | nil,
          participant: String.t() | nil,
          is_available: boolean() | nil,
          is_alternate: boolean() | nil,
          created: String.t() | nil,
          updated: String.t() | nil,
          unlisted: String.t() | nil,
          team_id: integer() | nil,
          player_id: integer() | nil,
          global_team_id: integer() | nil,
          sportsbook_url: String.t() | nil,
          is_in_play: boolean() | nil,
          sportsbook_market_id: String.t() | nil,
          sportsbook_outcome_id: String.t() | nil
        }
end
