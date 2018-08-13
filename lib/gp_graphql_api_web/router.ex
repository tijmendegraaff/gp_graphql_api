defmodule GpGraphqlApiWeb.Router do
  use GpGraphqlApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug,
      schema: GpGraphqlApiWeb.Schema
    
    if Mix.env() == :dev do
      forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: GpGraphqlApiWeb.Schema
    end
  end
end
