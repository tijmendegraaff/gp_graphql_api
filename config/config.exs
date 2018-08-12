# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gp_graphql_api,
  ecto_repos: [GpGraphqlApi.Repo]

# Configures the endpoint
config :gp_graphql_api, GpGraphqlApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2GeUa9cEe3cEhEn1dzm6FViXp1YvKmBRqKc6QF3N9eiRN9/m9e+xyMEG2PBpQ0Ev",
  render_errors: [view: GpGraphqlApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: GpGraphqlApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
