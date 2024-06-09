defmodule ExSportsdataio.Betting.EntityMetadata do
  defstruct [
    :record_id,
    :name
  ]

  @type t :: %__MODULE__{
          record_id: integer(),
          name: String.t() | nil
        }
end
