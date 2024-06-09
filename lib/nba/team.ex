defmodule ExSportsdataio.NBA.Team do
  @moduledoc """
  Struct for NBA Team data.
  """

  @type t :: %__MODULE__{
          team_id: integer(),
          key: String.t(),
          active: boolean(),
          city: String.t() | nil,
          name: String.t() | nil
        }

  defstruct [
    :team_id,
    :key,
    :active,
    :city,
    :name
  ]
end
