defmodule Excouragement.Router do
  use Excouragement.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :twilio do
    plug :accepts, ["html"]
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Excouragement do
    pipe_through :twilio # Use the default browser stack

    resources "/messages", MessageController, only: [:index, :create]
    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Excouragement do
  #   pipe_through :api
  # end
end
