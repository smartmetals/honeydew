use Mix.Config

config :ecto_poll_queue_example, EctoPollQueueExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "honeydew_test",
  username: "root",
  password: "",
  hostname: "localhost",
  port: 26257

config :logger, compile_time_purge_level: :warn

config :logger, :console, level: :warn

config :ecto_poll_queue_example, interval: 0.5
