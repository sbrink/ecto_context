import Config

config :ecto_context, ecto_repos: [EctoContext.Test.Repo]

config :ecto_context, EctoContext.Test.Repo,
  url: "ecto://postgres:postgres@localhost/ecto_context_test",
  pool: Ecto.Adapters.SQL.Sandbox,
  priv: "test/support/"

config :ecto_context,
  repo: EctoContext.Test.Repo
