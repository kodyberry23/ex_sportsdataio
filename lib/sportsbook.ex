defmodule ExSportsdataio.Sportsbook do
  defstruct [
    :sportsbook_id,
    :name
  ]

  @type t :: %__MODULE__{
          sportsbook_id: integer(),
          name: String.t() | nil
        }
end
