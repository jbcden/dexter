defmodule EncounterTest do
  use ExUnit.Case

  test "gets encounter method by id" do
    {:ok, walk} = Dexter.Encounter.method(1)

    assert walk["name"] == "walk"
  end

  test "gets encounter condition by id" do
    {:ok, swarm} = Dexter.Encounter.condition(1)

    assert swarm["name"] == "swarm"
  end

  test "gets encounter condition values by id" do
    {:ok, swarm} = Dexter.Encounter.condition_values(1)

    assert get_in(swarm, ["condition", "name"]) == "swarm"
  end
end
