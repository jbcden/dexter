defmodule Dexter.Pokemon do
  @moduledoc """
  Gets Pokémon information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets Pokémon ability by id or name
  """
  def ability(id) do
    Request.make("ability/#{id}")
  end

  @doc """
  Gets Pokémon characteristics by id
  """
  def characteristic(id) do
    Request.make("characteristic/#{id}")
  end

  @doc """
  Gets Pokémon egg group by id or name
  """
  def egg_group(id) do
    Request.make("egg-group/#{id}")
  end

  @doc """
  Gets Pokémon gender by id or name
  """
  def gender(id) do
    Request.make("gender/#{id}")
  end

  @doc """
  Gets Pokémon growth rates by id or name
  """
  def growth_rate(id) do
    Request.make("growth-rate/#{id}")
  end

  @doc """
  Gets Pokémon nature by id or name
  """
  def nature(id) do
    Request.make("nature/#{id}")
  end

  @doc """
  Gets Pokémon Pokéathlons stats by id or name
  """
  def pokeathlon_stat(id) do
    Request.make("pokeathlon-stat/#{id}")
  end

  @doc """
  Gets Pokémon by id or name
  """
  def get(id) do
    Request.make("pokemon/#{id}")
  end

  @doc """
  Gets Pokémon color stats by id or name
  """
  def color(id) do
    Request.make("pokemon-color/#{id}")
  end

  @doc """
  Gets Pokémon form stats by id or name
  """
  def form(id) do
    Request.make("pokemon-form/#{id}")
  end

  @doc """
  Gets Pokémon habitat by id or name
  """
  def habitat(id) do
    Request.make("pokemon-habitat/#{id}")
  end

  @doc """
  Gets Pokémon shape by id or name
  """
  def shape(id) do
    Request.make("pokemon-shape/#{id}")
  end

  @doc """
  Gets Pokémon species by id or name
  """
  def species(id) do
    Request.make("pokemon-species/#{id}")
  end

  @doc """
  Gets Pokémon statistics by id or name
  """
  def stats(id) do
    Request.make("stat/#{id}")
  end

  @doc """
  Gets Pokémon type by id or name
  """
  def type(id) do
    Request.make("type/#{id}")
  end
end
