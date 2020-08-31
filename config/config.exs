# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :finance_tracker,
  ecto_repos: [FinanceTracker.Repo]

# Configures the endpoint
config :finance_tracker, FinanceTrackerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HIDo3GNXxbYwifssv7h8JJLJvMHHySr6wenV/Kljd0ao6kJ1iqV1Sb78URInUMOQ",
  render_errors: [view: FinanceTrackerWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: FinanceTracker.PubSub,
  live_view: [signing_salt: "5XMb8Tos"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
