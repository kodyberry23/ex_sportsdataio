defmodule ExSportsdataio.MLB do
  ### News Functions ###
  defdelegate get_news(), to: ExSportsdataio.MLB.News
  defdelegate get_news_by_date(date), to: ExSportsdataio.MLB.News
  defdelegate get_news_by_player_id(player_id), to: ExSportsdataio.MLB.News

  ### Slate Functions ###
  defdelegate get_dfs_slates_by_date(date), to: ExSportsdataio.MLB.DfsSlate

  ### Stadium Functions ###
  defdelegate get_stadiums(), to: ExSportsdataio.MLB.Stadium

  ### Stat Functions ###
  defdelegate get_player_game_stats_by_date(date), to: ExSportsdataio.MLB.Player.GameStats

  ### Team Functions ###
  defdelegate get_teams(), to: ExSportsdataio.MLB.Team
end
