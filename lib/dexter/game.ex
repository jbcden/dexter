defmodule Dexter.Game do
  @moduledoc """
  Gets games information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets generation by id or name
  """
  def generation(id) do
    Request.make("generation/#{id}")
  end

  @doc """
  Gets Pokédex by id or name
  """
  def pokedex(id) do
    Request.make("pokedex/#{id}")
  end

  @doc """
  Gets game version by id or name
  """
  def version(id) do
    Request.make("version/#{id}")
  end

  @doc """
  Gets game version groups (groups of highly similar versions of the games)
  by id or name
  """
  def version_group(id) do
    Request.make("version-group/#{id}")
  end

end
