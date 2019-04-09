# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :lightweight,
  ecto_repos: [Lightweight.Repo]

# Configures the endpoint
config :lightweight, LightweightWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "CqfRir42N0vvhD9A37gymyJbSK2Z+D+eeTJ16IsQScWsJMEGbaWgs6JGVpA513K2",
  render_errors: [view: LightweightWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lightweight.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
