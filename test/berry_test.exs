defmodule BerryTest do
  use ExUnit.Case, async: true

  test "gets berry by id or name" do
    {:ok, cheri} = Dexter.Berry.get(1)
    {:ok, chesto} = Dexter.Berry.get("chesto")

    assert cheri["name"] == "cheri"
    assert chesto["id"] == 2
  end

  test "gets berry firmness by id" do
    {:ok, very_soft} = Dexter.Berry.firmness(1)

    assert very_soft["name"] == "very-soft"
  end

  test "gets berry flavor by id" do
    {:ok, spicy} = Dexter.Berry.flavor(1)

    assert spicy["name"] == "spicy"
  end
end
