defmodule Dexter.Cache do
  @moduledoc false

  def start_link do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def get(request) do
    Agent.get(__MODULE__, &Map.get(&1, request))
  end

  def put(request, value) do
    Agent.update(__MODULE__, &Map.put(&1, request, value))
  end
end
