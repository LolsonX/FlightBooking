class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :city_name, null: false
      t.string :country, null: false
      t.string :language, null: false
      t.string :country_iso_code, limit: 3, null: false

      t.timestamps
    end
  end
end
