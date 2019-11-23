use Mix.Config

config :unsilo,
  ecto_repos: [Unsilo.Repo],
  app_domain: "sfuchs.fyi"

config :unsilo, UnsiloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oSxFxllzYHVBGyJy3s9QQ4cryjLNmYQA2LzHmUf1cMNZM1MIX1jEb6OyVtlZku4g",
  render_errors: [view: UnsiloWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Unsilo.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "8CO/vMlHX7M1G6OKyQXgAVCKJ/7AhBf0"
  ]

config :nestex, Nestex,
#  api_key: "c.ntW4buNIKI40QKOxzsa82JUEE5a1DUVp5DCW0Ib2RM8XWZVdxMOj7kDKU0QKzdXZtLYjg2iIbZByIUIW87JUq4PIvRZpJw202nbCFhhOfmmu3YQvyxO4Fu5OZTrIPegsvbYQFSaDhGMglyJ3",
  use_mock_data: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :rain_machine, RainMachine.Device,
  use_mock_data: false

config :canary,
  repo: Unsilo.Repo

config :unsilo, Unsilo.UserController, allow_signups: true

config :unsilo, Unsilo.Feeds.Heartbeat, delete_retention: 3

config :arc,
  storage: Arc.Storage.Local

config :phoenix, :json_library, Jason

config :phoenix, :template_engines,
  leex: Phoenix.LiveView.Engine,
  haml: PhoenixHaml.Engine

config :unsilo, UnsiloWeb.Auth.Guardian,
  issuer: "unsilo",
  secret_key: "uDTx1Z2rkpSdKLgKpMtJqnmGOA2l6TJNUxMA72UgL6NS2Nn1Hb7R0XFeLCrTcwtp"

import_config "#{Mix.env()}.exs"
