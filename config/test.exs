use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :lightweight, LightweightWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :lightweight, Lightweight.Repo,
  username: "postgres",
  password: "postgres",
  database: "lightweight_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
