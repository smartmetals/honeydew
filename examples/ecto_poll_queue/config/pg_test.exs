use Mix.Config

config :ecto_poll_queue_example, EctoPollQueueExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "honeydew_test",
  hostname: "localhost"
