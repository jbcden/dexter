defmodule RequestTest do
  use ExUnit.Case

  test "handles a successful request" do
    {:ok, bulbasaur} = Dexter.Request.make("pokemon/1")

    assert bulbasaur["name"] == "bulbasaur"
  end
end
