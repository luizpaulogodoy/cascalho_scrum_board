defmodule CascalhoScrumBoard.Router do
  use CascalhoScrumBoard.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CascalhoScrumBoard do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    # signup routes
    resources "/registrations", RegistrationController, only: [:new, :create]

    # Login Routes
    get    "/login",  SessionController, :new
    post   "/login",  SessionController, :create
    delete "/logout", SessionController, :delete
  end

  # Other scopes may use custom stacks.
  # scope "/api", CascalhoScrumBoard do
  #   pipe_through :api
  # end
end
