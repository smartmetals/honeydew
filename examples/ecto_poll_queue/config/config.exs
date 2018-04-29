use Mix.Config

config :ecto_poll_queue_example, ecto_repos: [EctoPollQueueExample.Repo]

import_config "#{Mix.env()}.exs"
