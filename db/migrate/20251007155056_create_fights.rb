class CreateFights < ActiveRecord::Migration[8.0]
  def change
    create_table :fights do |t|
      t.references :departure_airport, null: false, foreign_key: { to_table: :airports }
      t.references :arrival_airport, null: false, foreign_key: { to_table: :airports }
      t.date :date
      t.time :duration

      t.timestamps
    end
  end
end
