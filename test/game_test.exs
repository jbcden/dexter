defmodule GameTest do
  use ExUnit.Case

  test "gets generation by id or name" do
    {:ok, gen_one} = Dexter.Game.generation(1)

    assert gen_one["name"] == "generation-i"
  end

  test "gets Pokédex by id" do
    {:ok, kanto_dex} = Dexter.Game.pokedex(2)

    assert kanto_dex["name"] == "kanto"
  end

  test "gets game version by id" do
    {:ok, blue} = Dexter.Game.version(2)

    assert blue["name"] == "blue"
  end

  test "gets Pokédex firmness by id" do
    {:ok, group_one} = Dexter.Game.version_group(1)

    assert group_one["name"] == "red-blue"
  end
end
