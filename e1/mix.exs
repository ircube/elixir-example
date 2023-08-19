defmodule E1.MixProject do
  use Mix.Project
  def project do
    [
      app: :E1,
      version: "0.0.1",
      escript: eScript()
    ]
  end

  defp eScript do
    [main_module: E1.CLI]
  end
end
