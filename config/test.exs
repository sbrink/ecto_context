import Config

config :ecto_context, ecto_repos: [EctoContext.Test.Repo]

config :ecto_context, EctoContext.Test.Repo,
  database: Path.expand("../ecto_context_test.db", Path.dirname(__ENV__.file)),
  pool: Ecto.Adapters.SQL.Sandbox,
  priv: "test/support/"

config :ecto_context,
  repo: EctoContext.Test.Repo
