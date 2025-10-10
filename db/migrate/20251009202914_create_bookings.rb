class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.references :flight, null: false, foreign_key: { to_table: :flights }
      t.integer :num_of_passengers

      t.timestamps
    end
  end
end
