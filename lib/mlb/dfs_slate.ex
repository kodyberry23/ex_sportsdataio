defmodule ExSportsdataio.MLB.DfsSlate do
  @moduledoc """
  MLB Slate Context
  """
  alias ExSportsdataio.Client
  alias ExSportsdataio.MLB.Game
  alias ExSportsdataio.DfsSlate
  alias ExSportsdataio.DfsSlate.Game, as: DfsSlateGame
  alias ExSportsdataio.DfsSlate.Player

  def get_dfs_slates_by_date(date) do
    Client.request(
      "/mlb/stats/json/dfsslatesbydate/:date",
      %{opts: [path_params: [date: date]]}
    )
    |> Client.handle_response(%DfsSlate{
      dfs_slate_games: [%DfsSlateGame{game: %Game{}}],
      dfs_slate_players: [%Player{}]
    })
  end
end
