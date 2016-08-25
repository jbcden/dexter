defmodule ItemTest do
  use ExUnit.Case, async: true

  test "gets item by id" do
    {:ok, master_ball} = Dexter.Item.get(1)

    assert master_ball["name"] == "master-ball"
  end

  test "gets item attribute by id" do
    {:ok, countable} = Dexter.Item.attribute(1)

    assert countable["name"] == "countable"
  end

  test "gets item category by id" do
    {:ok, stat_boosts} = Dexter.Item.category(1)

    assert stat_boosts["name"] == "stat-boosts"
  end

  test "gets item fling effect by id" do
    {:ok, badly_poison} = Dexter.Item.fling_effect(1)

    assert badly_poison["name"] == "badly-poison"
  end

  test "gets item pocket by id" do
    {:ok, misc} = Dexter.Item.pocket(1)

    assert misc["name"] == "misc"
  end
end
