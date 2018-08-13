defmodule GpGraphqlApiWeb.Router do
  use GpGraphqlApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GpGraphqlApiWeb do
    pipe_through :api

    forward(
      "/graphql",
      schema: GpGraphqlApiWeb.Schema
    )

    if Mix.env() == :dev do
      forward(
        "/graphiql",
        schema: SlackGraphqlApiWeb.Schema
      )
    end
  end
end
