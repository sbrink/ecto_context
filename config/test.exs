use Mix.Config

config :ecto_context, ecto_repos: [EctoContext.Test.Repo]

config :ecto_context, EctoContext.Test.Repo,
  database: "ecto_context_test",
  pool: Ecto.Adapters.SQL.Sandbox,
  priv: "test/support/"

config :ecto_context,
  repo: EctoContext.Test.Repo
