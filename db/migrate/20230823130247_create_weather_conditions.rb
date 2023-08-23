# Migration to add weather_conditions table to db
class CreateWeatherConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :weather_conditions do |t|
      t.text :text, null: false
      t.string :icon
      t.integer :code, null: false

      t.timestamps
    end
  end
end
