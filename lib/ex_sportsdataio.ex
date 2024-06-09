defmodule ExSportsdataio do
  defmodule MissingApiKeyError do
    defexception message: """
                 An `:api_key` is required in order to make calls to fantasydata.
                 Please configure `:api_key` within your config.exs file.

                 config :ex_sportsdataio, api_key: "your_api_key"
                 """
  end
end
