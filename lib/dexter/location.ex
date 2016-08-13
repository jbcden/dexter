defmodule Dexter.Location do
  @moduledoc """
  Gets location information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets a location by id or name
  """
  def get(id) do
    Request.make("location/#{id}")
  end

  @doc """
  Gets a location area by id or name
  """
  def area(id) do
    Request.make("location-area/#{id}")
  end

  @doc """
  Gets a pal park area by id or name
  """
  def pal_park(id) do
    Request.make("pal-park-area/#{id}")
  end

  @doc """
  Gets a region by id or name
  """
  def region(id) do
    Request.make("region/#{id}")
  end
end
