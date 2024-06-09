defmodule ExSportsdataio.MLB.News do
  @moduledoc """
  Struct for MLB News data.
  """
  alias ExSportsdataio.Client

  @type t :: %__MODULE__{
          news_id: integer(),
          source: String.t() | nil,
          updated: String.t(),
          time_ago: String.t() | nil,
          title: String.t() | nil,
          content: String.t() | nil,
          url: String.t() | nil,
          terms_of_use: String.t() | nil,
          author: String.t() | nil,
          categories: String.t() | nil,
          player_id: integer() | nil,
          team_id: integer() | nil,
          team: String.t() | nil,
          player_id2: integer() | nil,
          team_id2: integer() | nil,
          team2: String.t() | nil,
          original_source: String.t() | nil,
          original_source_url: String.t() | nil
        }

  @derive [Poison.Encoder]
  defstruct [
    :news_id,
    :source,
    :time_ago,
    :title,
    :content,
    :url,
    :terms_of_use,
    :author,
    :categories,
    :player_id,
    :team_id,
    :team,
    :player_id2,
    :team_id2,
    :team2,
    :original_source,
    :original_source_url,
    :updated
  ]

  def get_news() do
    Client.request("/mlb/stats/json/news")
    |> Client.handle_response(%__MODULE__{})
  end

  def get_news_by_date(date) do
    Client.request(
      "/mlb/stats/json/newsbydate/:date",
      %{opts: [path_params: [date: date]]}
    )
    |> Client.handle_response(%__MODULE__{})
  end

  def get_news_by_player_id(player_id) do
    Client.request(
      "/mlb/stats/json/newsbyplayerid/:player_id",
      %{opts: [path_params: [player_id: player_id]]}
    )
    |> Client.handle_response(%__MODULE__{})
  end
end
