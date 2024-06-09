defmodule ExSportsdataio.MLB.Team do
  @moduledoc """
  Struct for MLB Team data.
  """
  alias ExSportsdataio.Client

  @type t() :: %__MODULE__{
          team_id: integer(),
          key: String.t(),
          active: boolean(),
          city: String.t() | nil,
          name: String.t() | nil,
          stadium_id: integer() | nil,
          league: String.t() | nil,
          division: String.t() | nil,
          primary_color: String.t() | nil,
          secondary_color: String.t() | nil,
          tertiary_color: String.t() | nil,
          quaternary_color: String.t() | nil,
          wikipedia_logo_url: String.t() | nil,
          wikipedia_word_mark_url: String.t() | nil,
          global_team_id: integer(),
          head_coach: String.t() | nil,
          hitting_coach: String.t() | nil,
          pitching_coach: String.t() | nil
        }

  defstruct [
    :team_id,
    :key,
    :active,
    :city,
    :name,
    :stadium_id,
    :league,
    :division,
    :primary_color,
    :secondary_color,
    :tertiary_color,
    :quaternary_color,
    :wikipedia_logo_url,
    :wikipedia_word_mark_url,
    :global_team_id,
    :head_coach,
    :hitting_coach,
    :pitching_coach
  ]

  def get_teams() do
    Client.request("/mlb/stats/json/allteams")
    |> Client.handle_response(%__MODULE__{})
  end
end
