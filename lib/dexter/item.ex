defmodule Dexter.Item do
  @moduledoc """
  Gets item information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets an item by id or name
  """
  def get(id) do
    Request.make("item/#{id}")
  end

  @doc """
  Gets an item attribute by id or name
  """
  def attribute(id) do
    Request.make("item-attribute/#{id}")
  end

  @doc """
  Gets an item category by id or name
  """
  def category(id) do
    Request.make("item-category/#{id}")
  end

  @doc """
  Gets an item fling effect by id or name
  """
  def fling_effect(id) do
    Request.make("item-fling-effect/#{id}")
  end

  @doc """
  Gets an item pocket by id or name
  """
  def pocket(id) do
    Request.make("item-pocket/#{id}")
  end
end
