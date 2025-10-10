class RenameFightToFlight < ActiveRecord::Migration[8.0]
  def change
    rename_table :fights, :flights
  end
end
