class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|
      t.references :user, null: false, foreign_key: true
      t.string :comment, null: false
      t.integer :rateable_id, null: false
      t.string :rateable_type, null: false
      t.integer :rating, null: false

      t.timestamps
    end
  end
end
