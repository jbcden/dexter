defmodule Dexter do
  use Application

  @doc false
  def start(_type, _args) do
    Dexter.Cache.start_link
  end
end
