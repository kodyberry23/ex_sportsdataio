defmodule ExSportsdataio.Utils do
  def decode(value) do
    Jason.decode(value, keys: &Macro.underscore/1)
  end
end
