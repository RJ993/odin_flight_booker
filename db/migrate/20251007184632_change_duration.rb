class ChangeDuration < ActiveRecord::Migration[8.0]
  def change
    change_column :flights, :duration, :string
  end
end
