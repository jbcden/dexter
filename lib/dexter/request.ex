defmodule Dexter.Request do
  @moduledoc """
  Takes care of making, caching, and handling query requests
  """

  alias Poison.Parser

  @url "http://pokeapi.co/api/v2/"

  @doc """
  Makes a request using the given query
  """
  def make(query) do
    case Dexter.Cache.get(query) do
      nil -> get(query)
      # If in cache, return that
      response -> response
    end
  end

  defp get(query) do
    full_query = make_url(query)

    response =
      full_query
      # Make the request
      |> HTTPoison.get([], [follow_redirect: true, recv_timeout: 1000000, timeout: 1000000])
      |> handle_response
      |> handle_body

    # Put response in cache
    Dexter.Cache.put(query, response)

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

  defp handle_body({:ok, body}), do: {:ok, body}
  defp handle_body({:error, message}), do: {:error, message}
end
