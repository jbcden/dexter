defmodule Dexter.Encounter do
  @moduledoc """
  Gets encounter information
  """

  alias Dexter.Request, as: Request

  @doc """
  Gets encounter method by id or name
  """
  def method(id) do
    Request.make("encounter-method/#{id}")
  end

  @doc """
  Gets encounter condition by id or name
  """
  def condition(id) do
    Request.make("encounter-condition/#{id}")
  end

  @doc """
  Gets encounter condition values by id or name
  """
  def condition_values(id) do
    Request.make("encounter-condition-value/#{id}")
  end
end
