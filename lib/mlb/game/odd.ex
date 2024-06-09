defmodule ExSportsdataio.MLB.Game.Odd do
  defstruct [
    :game_odd_id,
    :sportsbook,
    :game_id,
    :created,
    :updated,
    :home_money_line,
    :away_money_line,
    :home_point_spread,
    :away_point_spread,
    :home_point_spread_payout,
    :away_point_spread_payout,
    :over_under,
    :over_payout,
    :under_payout,
    :sportsbook_id,
    :sportsbook_url,
    :odd_type
  ]

  @type t :: %__MODULE__{
          game_odd_id: integer(),
          sportsbook: String.t() | nil,
          game_id: integer(),
          created: String.t() | nil,
          updated: String.t() | nil,
          home_money_line: integer() | nil,
          away_money_line: integer() | nil,
          home_point_spread: float() | nil,
          away_point_spread: float() | nil,
          home_point_spread_payout: integer() | nil,
          away_point_spread_payout: integer() | nil,
          over_under: float() | nil,
          over_payout: integer() | nil,
          under_payout: integer() | nil,
          sportsbook_id: integer() | nil,
          sportsbook_url: String.t() | nil,
          odd_type: String.t() | nil
        }
end
