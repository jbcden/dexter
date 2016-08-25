# dexter

> An Elixir Pokéapi client

## Install

In your `mix.exs`:

```elixir
defp deps do
  [
    { :dexter, "~> 1.0.0" }
  ]
end
```

Then run `mix deps.get`.

## Usage

Check out the fancy HexDocs [here](https://hexdocs.pm/dexter/).

First of all, add Dexter to the `application` function in your `mix.exs`:

```elixir
def application do
  [applications: [:logger, :dexter]]
end
```

There's a lot of modules under `Dexter` that represent each endpoint. See the [API documentation](http://pokeapi.co/docsv2/) or the Hex docs above for possible endpoints and arguments. Note that the endpoints that have a `-` in then use `_` in Dexter.

`Request` exposes a `make` function that allows you to write any query, with the full URL or just the endpoint. The other modules use it under the hood.

All queries are cached in a naive, Agent-based cache.

In case of an error, you will get an `{:error, message}` tuple.

## Examples

Get info about Bulbasaur:

```elixir
Dexter.Pokemon.get(1) # Or `Dexter.Pokemon.get("bulbasaur")`
```

Get info about the Master Ball:

```elixir
Dexter.Item.get(1)
```

You get the idea.

## License

MIT © [Juan Soto](http://juansoto.me)
