defmodule Dexter do
  use Application

  alias Dexter.Cache

  @doc false
  def start(_type, _args) do
    Cache.start_link
  end
end
