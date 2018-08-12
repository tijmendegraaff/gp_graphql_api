use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :gp_graphql_api, GpGraphqlApiWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :gp_graphql_api, GpGraphqlApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "gp_graphql_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
