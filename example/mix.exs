defmodule Example.MixProject do
  use Mix.Project

  def project do
    [
      app: :example,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
    [
      {:phoenix, "~> 1.1 or ~> 1.2"},
      {:phoenix_html, "~> 2.3"},
      {:cowboy, "~> 1.0", only: [:dev, :test]},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false}
    ]
  end

end
