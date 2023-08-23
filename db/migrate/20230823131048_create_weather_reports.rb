# Migration to add locations table to db
class CreateWeatherReports < ActiveRecord::Migration[7.0]
  def change
    create_table :weather_reports do |t|
      t.references :location, null: false, foreign_key: true
      t.datetime :last_updated_at
      t.float :temperature
      t.string :wind_direction
      t.float :wind_kph
      t.integer :humidity
      t.float :feels_like_temperature
      t.float :uv_index
      t.float :gust_kph
      t.references :weather_condition, foreign_key: true

      t.timestamps
    end
  end
end
