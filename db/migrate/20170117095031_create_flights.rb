class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.string :start
      t.string :duration
      t.integer :from_airport_id, foreign_key: {to_table: :airports}
      t.integer :to_airport_id, foreign_key: {to_table: :airports}

      t.timestamps
    end
  end
end
