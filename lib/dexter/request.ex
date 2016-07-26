defmodule Dexter.Request do
  @moduledoc """
  Takes care of making and handling query requests
  """

  alias Poison.Parser

  @url "http://pokeapi.co/api/v2/"

  @doc """
  Makes a request using the given query
  """
  def make(query) do
    @url <> query
    |> HTTPoison.get([], [follow_redirect: true])
    |> handle_response
    |> handle_body
  end

  defp handle_response({:ok, %{status_code: 200, body: body}}), do: {:ok, Parser.parse!(body)}

  defp handle_body({:ok, body}), do: {:ok, body}
end
