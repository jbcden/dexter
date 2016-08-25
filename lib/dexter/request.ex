defmodule Dexter.Request do
  @moduledoc """
  Takes care of making, caching, and handling query requests
  """

  alias Dexter.Cache
  alias Poison.Parser

  @url "http://pokeapi.co/api/v2/"

  @doc """
  Makes a request using the given query

  `query` can be a full URL (`http://pokeapi.co/api/v2/pokemon/1`) or just the
  endpoint (`pokemon/1`)
  """
  def make(query) do
    case Cache.get(query) do
      nil -> get(query)
      # If in cache, return that
      response -> response
    end
  end

  defp get(query) do
    full_query = make_url(query)

    # If we're testing, make the timeout value super high for our convenience
    # If not, we use 5000, which is the default in HTTPoison
    test_timeout = case Mix.env do
      :test -> 1000000
      _ -> 5000
    end

    # Options for HTTPoison
    options = [
      # This is needed for Pokéapi because it redirects every request
      follow_redirect: true,
      # Timeouts for connection and request
      recv_timeout: test_timeout,
      timeout: test_timeout
    ]

    response =
      full_query
      # Make the request
      |> HTTPoison.get([], options)
      |> handle_response
      |> handle_body

    # Put response in cache
    Cache.put(full_query, response)

    response
  end

  defp make_url(query) do
    case String.contains?(query, "pokeapi.co/api/v2/") do
      true ->
        query
      false ->
        @url <> query
    end
  end

  defp handle_response({:ok, %{status_code: 200, body: body}}), do: {:ok, Parser.parse!(body)}
  defp handle_response({:ok, %{status_code: 404}}), do: {:error, "Not found"}
  defp handle_response({:error, %HTTPoison.Error{id: _id, reason: :timeout}}), do: {:error, :timeout}
  defp handle_response({:error, %HTTPoison.Error{id: _id, reason: :connect_timeout}}), do: {:error, :timeout}

  defp handle_body({:ok, body}), do: {:ok, body}
  defp handle_body({:error, message}), do: {:error, message}
end
