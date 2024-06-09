defmodule ExSportsdataio.NBA.Player do
  @moduledoc """
  Struct for NBA Player data.
  """

  @type t :: %__MODULE__{
          playerid: integer(),
          key: String.t(),
          active: boolean(),
          first_name: String.t() | nil,
          last_name: String.t() | nil,
          team: String.t() | nil,
          position: String.t() | nil,
          jersey: integer() | nil,
          height: integer() | nil,
          weight: integer() | nil,
          birthdate: any(),
          birthcity: String.t() | nil,
          birthstate: String.t() | nil,
          birthcountry: String.t() | nil,
          college: String.t() | nil,
          salary: integer() | nil,
          photo_url: String.t() | nil,
          experience: integer() | nil,
          sport: String.t() | nil
        }

  defstruct [
    :playerid,
    :key,
    :active,
    :first_name,
    :last_name,
    :team,
    :position,
    :jersey,
    :height,
    :weight,
    :birthdate,
    :birthcity,
    :birthstate,
    :birthcountry,
    :college,
    :salary,
    :photo_url,
    :experience,
    :sport
  ]
end
