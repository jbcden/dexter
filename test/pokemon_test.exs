defmodule PokemonTest do
  use ExUnit.Case

  test "gets Pokémon ability by id" do
    {:ok, effect} = Dexter.Pokemon.ability(1)

    changes = hd(get_in(effect, ["effect_changes"]))
    entries = hd(get_in(changes, ["effect_entries"]))

    assert get_in(entries, ["language", "name"]) == "en"
  end

  test "gets Pokémon characteristic by id" do
    {:ok, adore} = Dexter.Pokemon.characteristic(1)

    desc = hd(adore["descriptions"])

    assert desc["description"] == "Adore manger"
  end

  test "gets Pokémon egg group by id" do
    {:ok, monster} = Dexter.Pokemon.egg_group(1)

    assert monster["name"] == "monster"
  end

  test "gets Pokémon gender by id" do
    {:ok, female} = Dexter.Pokemon.gender(1)

    assert female["name"] == "female"
  end

  test "gets Pokémon growth rate by id" do
    {:ok, slow} = Dexter.Pokemon.growth_rate(1)

    desc = hd(slow["descriptions"])

    assert desc["description"] == "slow"
  end

  test "gets Pokémon nature by id" do
    {:ok, hardy} = Dexter.Pokemon.nature(1)

    assert hardy["name"] == "hardy"
  end

  test "gets Pokémon Pokéathlons stats by id" do
    {:ok, speed} = Dexter.Pokemon.pokeathlon_stat(1)

    assert speed["name"] == "speed"
  end

  test "gets Pokémon by id" do
    {:ok, bulba} = Dexter.Pokemon.get(1)

    assert get_in(bulba, ["species", "name"]) == "bulbasaur"
  end

  test "gets Pokémon color by id" do
    {:ok, black} = Dexter.Pokemon.color(1)

    assert black["name"] == "black"
  end

  test "gets Pokémon form by id" do
    {:ok, bulba} = Dexter.Pokemon.form(1)

    assert bulba["name"] == "bulbasaur"
  end

  test "gets Pokémon habitat by id" do
    {:ok, cave} = Dexter.Pokemon.habitat(1)

    assert cave["name"] == "cave"
  end

  test "gets Pokémon shape by id" do
    {:ok, ball} = Dexter.Pokemon.shape(1)

    assert ball["name"] == "ball"
  end

  test "gets Pokémon species by id" do
    {:ok, monster} = Dexter.Pokemon.species(1)

    assert monster["base_happiness"] == 70
  end

  test "gets Pokémon stats by id" do
    {:ok, hp} = Dexter.Pokemon.stats(1)

    assert hp["name"] == "hp"
  end

  test "gets Pokémon type by id" do
    {:ok, type} = Dexter.Pokemon.type(1)

    pound = hd(type["moves"])

    assert pound["name"] == "pound"
  end
end
