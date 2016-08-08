defmodule EvolutionTest do
  use ExUnit.Case

  test "gets evolution chain by id" do
    {:ok, bulbasaur_chain} = Dexter.Evolution.chain(1)

    assert get_in(bulbasaur_chain, ["chain", "species", "name"]) == "bulbasaur"
  end

  test "gets evolution trigger by id" do
    {:ok, level_up} = Dexter.Evolution.trigger(1)

    assert level_up["name"] == "level-up"
  end
end
