defmodule MpesaWeb.Router do
  use MpesaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphql", Absinthe.Plug,
    schema: MpesaWeb.Schema

    if Mix.env == :dev do
      forward "/graphiql", Absinthe.Plug.GraphiQL,
        schema: MpesaWeb.Schema
    end
  end
end
