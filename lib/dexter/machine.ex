defmodule Dexter.Machine do
  @moduledoc """
  Gets machine information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets a machine by id or name
  """
  def get(id) do
    Request.make("machine/#{id}")
  end
end
