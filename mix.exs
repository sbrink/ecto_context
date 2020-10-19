defmodule EctoContext.MixProject do
  use Mix.Project

  def project do
    [
      app: :ecto_context,
      version: "0.1.0",
      elixir: "~> 1.10",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      source_url: "https://github.com/sbrink/ecto_context",
      preferred_cli_env: [
        cov: :test,
        credo: :test,
        "test.watch": :test
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp package do
    [
      description: "Non-magic context generation for ecto",
      maintainers: ["Sascha Brink"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sbrink/ecto_context"}
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 3.0"},
      # Test only
      {:credo, "~> 1.0", only: :test},
      {:excoveralls, "~> 0.13.3", only: :test},
      {:mix_test_watch, "~> 1.0", only: :test},
      {:postgrex, ">= 0.0.0", only: :test}
    ]
  end

  defp aliases do
    [
      cov: ["coveralls.html"],
      credo: ["credo --strict"],
      release: ["hex.publish package"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test"]
    ]
  end
end
