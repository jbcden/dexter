defmodule Dexter do
  @moduledoc """
  Main module

  Links the cache with the rest of the application
  """
  use Application

  alias Dexter.Cache

  @doc false
  def start(_type, _args) do
    Cache.start_link
  end
end
