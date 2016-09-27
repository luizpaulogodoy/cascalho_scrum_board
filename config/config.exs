# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :cascalho_scrum_board,
  ecto_repos: [CascalhoScrumBoard.Repo]

# Configures the endpoint
config :cascalho_scrum_board, CascalhoScrumBoard.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lfef3XQ6ZC/tDn/kdm4MPIbEBYAPyhJsBh6tqAx+By/RjtuAR6Q7TansVvFbxraJ",
  render_errors: [view: CascalhoScrumBoard.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CascalhoScrumBoard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
