ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Excouragement.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Excouragement.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Excouragement.Repo)

