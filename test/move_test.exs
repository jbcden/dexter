defmodule MoveTest do
  use ExUnit.Case

  test "gets move by id or name" do
    {:ok, pound} = Dexter.Move.get(1)

    assert pound["name"] == "pound"
  end

  test "gets move ailment by id or name" do
  {:ok, paralysis} = Dexter.Move.ailment(1)

    assert paralysis["name"] == "paralysis"
  end

  test "gets move battle style by id or name" do
  {:ok, attack} = Dexter.Move.battle_style(1)

    assert attack["name"] == "attack"
  end

  test "gets move category by id or name" do
  {:ok, ailment} = Dexter.Move.category(1)

    assert ailment["name"] == "ailment"
  end

  test "gets move damage class by id or name" do
  {:ok, status} = Dexter.Move.damage_class(1)

    assert status["name"] == "status"
  end

  test "gets move learn method by id or name" do
  {:ok, level_up} = Dexter.Move.learn_method(1)

    assert level_up["name"] == "level-up"
  end

  test "gets move target by id or name" do
  {:ok, specific} = Dexter.Move.target(1)

    assert specific["name"] == "specific-move"
  end
end
