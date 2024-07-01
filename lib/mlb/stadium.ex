defmodule ExSportsdataio.MLB.Stadium do
  @moduledoc """
  Struct for Stadium data.
  """
  alias ExSportsdataio.Client

  @type t :: %__MODULE__{
          stadium_id: integer(),
          active: boolean(),
          name: String.t(),
          city: String.t() | nil,
          state: String.t() | nil,
          country: String.t() | nil,
          capacity: integer() | nil,
          surface: String.t() | nil,
          left_field: integer() | nil,
          mid_left_field: integer() | nil,
          left_center_field: integer() | nil,
          mid_left_center_field: integer() | nil,
          center_field: integer() | nil,
          mid_right_center_field: integer() | nil,
          right_center_field: integer() | nil,
          mid_right_field: integer() | nil,
          right_field: integer() | nil,
          geo_lat: float() | nil,
          geo_long: float() | nil,
          altitude: integer() | nil,
          home_plate_direction: integer() | nil,
          type: String.t() | nil
        }

  defstruct [
    :stadium_id,
    :active,
    :name,
    :city,
    :state,
    :country,
    :capacity,
    :surface,
    :left_field,
    :mid_left_field,
    :left_center_field,
    :mid_left_center_field,
    :center_field,
    :mid_right_center_field,
    :right_center_field,
    :mid_right_field,
    :right_field,
    :geo_lat,
    :geo_long,
    :altitude,
    :home_plate_direction,
    :type
  ]

  def get_stadiums() do
    Client.request("/mlb/stats/json/stadiums")
    |> Client.handle_response(%__MODULE__{})
  end
end
