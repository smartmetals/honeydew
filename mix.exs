defmodule Honeydew.Mixfile do
  use Mix.Project

  @version "1.1.2"

  def project do
    [app: :honeydew,
     version: @version,
     elixir: "~> 1.5",
     docs: docs(),
     deps: deps(),
     package: package(),
     elixirc_paths: elixirc_paths(Mix.env),
     description: "Pluggable local/remote job queue + worker pool with permanent workers.",
     dialyzer: [
       plt_add_apps: [:mnesia],
       flags: [
         # :unmatched_returns,
         # :error_handling,
         :race_conditions,
         :no_opaque
       ]
     ]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ecto, "~> 2.0", optional: true, only: [:dev, :prod]},
      {:riakc, ">= 2.4.1", only: :dev},
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:dialyxir, "~> 0.5", only: [:dev, :test], runtime: false}
    ]
  end

  defp package do
    [maintainers: ["Michael Shapiro"],
     licenses: ["MIT"],
     links: %{"GitHub": "https://github.com/koudelka/elixir-honeydew"}]
  end

  defp docs do
    [extras: ["README.md"],
     source_url: "https://github.com/koudelka/honeydew",
     source_ref: @version,
     assets: "assets",
     main: "readme"]
  end
end
