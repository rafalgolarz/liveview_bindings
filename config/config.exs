# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :liveview_bindings, LiveviewBindingsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6CPwuB1/EDffxKn8bKniHInydVlJv1wnAFiHD7ClIGU3nH2g+Z2LDYwW4F56Y5SN",
  render_errors: [view: LiveviewBindingsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LiveviewBindings.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "SECRET_SALT"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
