class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.references :air_connection, null: false, foreign_key: true
      t.datetime :departure_time, null: false
      t.datetime :arrival_time, null: false
      t.float :economy_seat_price, null: false
      t.float :buisness_seat_price, null: false
      t.float :first_class_seat_price, null: false
      t.float :flying_time, null: false

      t.timestamps
    end
  end
end
