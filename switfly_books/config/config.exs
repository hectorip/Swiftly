# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :switfly_books,
  ecto_repos: [SwitflyBooks.Repo]

# Configures the endpoint
config :switfly_books, SwitflyBooksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bxOa8ZDQ2l5A1QsJisKUmJrwV+AYtrNI74fALET+0Y9Y0p938AhMciZ1nju9TfAK",
  render_errors: [view: SwitflyBooksWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SwitflyBooks.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
