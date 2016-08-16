defmodule Dexter.Language do
  @moduledoc """
  Gets language information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets language by id or name
  """
  def get(id) do
    Request.make("language/#{id}")
  end
end
