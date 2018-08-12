defmodule GpGraphqlApiWeb.Router do
  use GpGraphqlApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", GpGraphqlApiWeb do
    pipe_through :api
  end
end
