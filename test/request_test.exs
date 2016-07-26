defmodule RequestTest do
  use ExUnit.Case

  test "handles a successful response" do
    {:ok, bulbasaur} = Dexter.Request.make("pokemon/1")

    assert bulbasaur["name"] == "bulbasaur"
  end

  test "handles 404 response" do
    {:error, message} = Dexter.Request.make("pokemon/banana")

    assert message == "Not found"
  end
end
