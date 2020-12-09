class CreateAirConnections < ActiveRecord::Migration[6.0]
  def change
    create_table :air_connections do |t|
      t.references :origin_airport, null: false, foreign_key: {to_table: :airports}
      t.references :destination_airport, null: false, foreign_key: {to_table: :airports}
      t.string :aircraft, null: false
      t.integer :distance, null: false
      t.string :segment_number, null: false
      t.integer :economy_seats, null: false, default: 0
      t.integer :buisness_seats, null: false, default: 0
      t.integer :first_class_seats, null: false, default: 0

      t.timestamps
    end
  end
end
