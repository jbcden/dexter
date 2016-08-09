defmodule Dexter.Contest do
  @moduledoc """
  Gets contest information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets contest type by id or name
  """
  def type(id) do
    Request.make("contest-type/#{id}")
  end

  @doc """
  Gets contest effect by id
  """
  def effect(id) do
    Request.make("contest-effect/#{id}")
  end

  @doc """
  Gets super contest effect by id
  """
  def super_effect(id) do
    Request.make("super-contest-effect/#{id}")
  end
end
