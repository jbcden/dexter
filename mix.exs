defmodule Dexter.Mixfile do
  use Mix.Project

  def project do
    [
      app: :dexter,
     version: "0.0.0",
     elixir: "~> 1.3",
     description: description,
     package: package,
     deps: deps()
   ]
  end

  def application do
    [applications: [:logger, :httpoison], mod: {Dexter, []}]
  end

  defp deps do
    [
      {:earmark, "~> 0.2", only: :dev},
      {:ex_doc, "~> 0.11", only: :dev},
      {:httpoison, "~> 0.9"},
      {:poison,    "~> 2.2"}
    ]
  end

  defp description do
    """
    A Pokéapi client for Elixir
    """
  end

  defp package do
    [
      maintainers: ["sotojuan"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sotojuan/dexter"}
    ]
  end
end
