class AddNumOfPassengersToFlights < ActiveRecord::Migration[8.0]
  def change
    add_column :flights, :num_of_passengers, :integer
  end
end
