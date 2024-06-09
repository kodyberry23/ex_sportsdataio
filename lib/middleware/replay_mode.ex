defmodule ExSportsdataio.Middleware.ReplayMode do
  @behaviour Tesla.Middleware

  @impl Tesla.Middleware
  def call(env, next, _opts) do
    env
    |> maybe_enable_replay_mode()
    |> Tesla.run(next)
  end

  defp maybe_enable_replay_mode(env) do
    replay_mode_enabled? = Keyword.get(env.opts, :enable_replay_mode, false)

    if replay_mode_enabled? do
      api_key_header_name = "Ocp-Apim-Subscription-Key"
      api_key = Tesla.get_header(env, api_key_header_name)

      env
      |> Tesla.delete_header(api_key_header_name)
      |> struct(%{query: [{"key", api_key}]})
    else
      env
    end
  end
end
