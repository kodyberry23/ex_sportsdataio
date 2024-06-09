defmodule ExSportsdataio.Error do
  @type t() :: %__MODULE__{
          status_code: integer(),
          message: String.t()
        }

  @derive [Poison.Encoder]
  defstruct message: nil, status_code: nil
end
