use Mix.Config

config :ecto_poll_queue_example, EctoPollQueueExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "honeydew_dev",
  username: "root",
  password: "",
  hostname: "localhost",
  port: 26257

config :logger, :console, level: :info
