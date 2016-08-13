defmodule LocationTest do
  use ExUnit.Case

  test "gets location by id or name" do
    {:ok, canalave} = Dexter.Location.get(1)

    assert canalave["name"] == "canalave-city"
  end

  test "gets location area by id or name" do
    {:ok, canalave_area} = Dexter.Location.area(1)

    assert canalave_area["name"] == "canalave-city-area"
  end

  test "gets pal park area by id or name" do
    {:ok, forest} = Dexter.Location.pal_park(1)

    assert forest["name"] == "forest"
  end

  test "gets region by id or name" do
    {:ok, kanto} = Dexter.Location.region(1)

    assert kanto["name"] == "kanto"
  end
end
