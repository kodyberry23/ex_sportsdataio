defmodule ExSportsdataio.Client do
  alias ExSportsdataio.MissingApiKeyError
  alias ExSportsdataio.Utils

  @type configs() :: keyword()
  @type env() :: Tesla.Env.t()

  @typedoc "Module struct that `Tesla.Env.body` will be mapped to"
  @type mapper() :: struct()

  @type opts() :: [
          url: binary(),
          path_params: keyword()
        ]

  @doc """
  Creates a new Tesla.client/2 with the provided configs
  """
  @spec new(configs()) :: Tesla.Client.t()
  def new(configs \\ %{}) do
    adapter = {get_adapter(configs), get_http_configs(configs)}

    middleware = [
      {Tesla.Middleware.Opts, get_opts(configs)},
      {Tesla.Middleware.BaseUrl, get_base_url(configs)},
      {Tesla.Middleware.Headers,
       [
         {"Content-Type", "application/json"},
         {"Ocp-Apim-Subscription-Key", get_api_key(configs)}
       ]},
      ExSportsdataio.Middleware.ReplayMode,
      Tesla.Middleware.PathParams,
      {Tesla.Middleware.JSON, engine: Poison, decode: &Utils.decode/1}
    ]

    Tesla.client(middleware, adapter)
  end

  @doc """
  Handles the Tesla.Env response returned from Tesla.request/2 by normalizing the
  response body keys to be in snake_case and then mapping the response
  body to the provided modules defined struct
  """
  @spec handle_response({:ok, env()}, mapper()) :: struct()
  def handle_response({:ok, %Tesla.Env{status: status, body: body}}, mapper)
      when status in 200..299 do
    convert_to_struct(body, mapper)
  end

  @spec handle_response({:ok, env()}, mapper()) :: ExSportsdataio.Error.t()
  def handle_response({:ok, %Tesla.Env{status: status, body: body}}, _mapper)
      when status >= 400 do
    Poison.Decode.transform(body, %{as: struct(ExSportsdataio.Error)})
  end

  @spec handle_response({:error, any()}, mapper()) :: {:error, any()}
  def handle_response({:error, _reason} = error, _mapper) do
    error
  end

  def request(url, opts \\ %{}) do
    default_opts = %{method: :get, url: url}

    merged_opts =
      default_opts
      |> Map.merge(opts)
      |> Enum.map(fn elem -> elem end)

    Tesla.request(new(opts), merged_opts)
  end

  ############## Private Functions ##############
  defp convert_to_struct(body, mapper) when is_map(body) do
    Poison.Decode.transform(body, %{as: mapper})
  end

  defp convert_to_struct(body, mapper) when is_list(body) do
    for elem <- body do
      Poison.Decode.transform(elem, %{as: mapper})
    end
  end

  defp get_adapter(configs) do
    config = Map.get(configs, :adapter)

    config || Application.get_env(:ex_sportsdataio, :adapter, Tesla.Adapter.Hackney)
  end

  defp get_api_key(configs) do
    config = Map.get(configs, :api_key)
    api_key = config || Application.get_env(:ex_sportsdataio, :api_key, nil)

    if api_key, do: api_key, else: raise(MissingApiKeyError)
  end

  defp get_base_url(configs) do
    config = Map.get(configs, :base_url)

    config || Application.get_env(:ex_sportsdataio, :base_url, "https://api.sportsdata.io/api/v3")
  end

  defp get_http_configs(configs) do
    config = Map.get(configs, :http_configs, [])
    app_config = Application.get_env(:ex_sportsdataio, :http_configs, [])

    Keyword.merge(config, app_config, fn _k, v1, _v2 -> v1 end)
  end

  defp get_opts(configs) do
    config = Map.get(configs, :opts, [])
    app_config = Application.get_env(:ex_sportsdataio, :opts, [])

    Keyword.merge(config, app_config, fn _k, v1, _v2 -> v1 end)
  end
end
