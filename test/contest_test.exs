defmodule ContestTest do
  use ExUnit.Case, async: true

  test "gets contest type by id" do
    {:ok, cool} = Dexter.Contest.type(1)

    assert cool["name"] == "cool"
  end

  test "gets contest effect by id" do
    {:ok, appeal} = Dexter.Contest.effect(1)

    assert appeal["jam"] == 0
  end

  test "gets super contest effect by id" do
    {:ok, effect} = Dexter.Contest.super_effect(1)

    assert effect["appeal"] == 2
  end
end
