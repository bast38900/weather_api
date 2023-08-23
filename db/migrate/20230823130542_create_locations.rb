# Migration to add locations table to db
class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.string :region
      t.string :country, null: false
      t.string :timezone

      t.timestamps
    end
  end
end
