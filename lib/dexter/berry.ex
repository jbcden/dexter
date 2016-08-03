defmodule Dexter.Berry do
  @moduledoc """
  Gets berry information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets a berry by id or name
  """
  def get(id) do
    Request.make("berry/#{id}")
  end

  @doc """
  Gets a berry firmness by id or name
  """
  def firmness(id) do
    Request.make("berry-firmness/#{id}")
  end

  @doc """
  Gets a berry flavor by id or name
  """
  def flavor(id) do
    Request.make("berry-flavor/#{id}")
  end

end
