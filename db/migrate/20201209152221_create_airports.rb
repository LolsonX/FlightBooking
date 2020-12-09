class CreateAirports < ActiveRecord::Migration[6.0]
  def change
    create_table :airports do |t|
      t.string :iata_code, null: false, limit: 3
      t.string :name, null: false, limit: 255
      t.integer :airport_type, null: false
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
