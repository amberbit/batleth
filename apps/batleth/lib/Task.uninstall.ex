#A mix task for uninstalling the database. To uninstall, use mix uninstall in the terminal.

defmodule Mix.Tasks.Uninstall do
  use Mix.Task
  use Database

  def run(_) do
    # Start mnesia, or we can't do much.
    Amnesia.start

    # Destroy the database.
    Database.destroy

    # Stop mnesia, so it flushes everything.
    Amnesia.stop

    # Destroy the schema for the node.
    Amnesia.Schema.destroy
  end
end
