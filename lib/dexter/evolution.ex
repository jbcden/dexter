defmodule Dexter.Evolution do
  @moduledoc """
  Gets evolution information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets evolution chain by id
  """
  def chain(id) do
    Request.make("evolution-chain/#{id}")
  end

  @doc """
  Gets evolution trigger by id or name
  """
  def trigger(id) do
    Request.make("evolution-trigger/#{id}")
  end
end
