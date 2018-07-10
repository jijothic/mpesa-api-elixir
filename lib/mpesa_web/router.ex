defmodule MpesaWeb.Router do
  use MpesaWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MpesaWeb do
    pipe_through :api
  end
end
