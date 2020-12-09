class CreateIntermediateAirports < ActiveRecord::Migration[6.0]
  def change
    create_table :intermediate_airports do |t|
      t.references :airport, null: false, foreign_key: true
      t.references :air_connection, null: false, foreign_key: true
      t.integer :stop_number, null: false

      t.timestamps
    end
  end
end
