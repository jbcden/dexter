defmodule Dexter.Move do
  @moduledoc """
  Gets move information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets a move by id or name
  """
  def get(id) do
    Request.make("move/#{id}")
  end

  @doc """
  Gets a move ailment by id or name
  """
  def ailment(id) do
    Request.make("move-ailment/#{id}")
  end

  @doc """
  Gets a move battle style by id or name
  """
  def battle_style(id) do
    Request.make("move-battle-style/#{id}")
  end

  @doc """
  Gets a move category by id or name
  """
  def category(id) do
    Request.make("move-category/#{id}")
  end

  @doc """
  Gets a move damage class by id or name
  """
  def damage_class(id) do
    Request.make("move-damage-class/#{id}")
  end

  @doc """
  Gets a move learn method by id or name
  """
  def learn_method(id) do
    Request.make("move-learn-method/#{id}")
  end

  @doc """
  Gets a move target by id or name
  """
  def target(id) do
    Request.make("move-target/#{id}")
  end
end
