# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_23_131048) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name", null: false
    t.string "region"
    t.string "country", null: false
    t.string "timezone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weather_conditions", force: :cascade do |t|
    t.text "text", null: false
    t.string "icon"
    t.integer "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weather_reports", force: :cascade do |t|
    t.bigint "location_id", null: false
    t.datetime "last_updated_at"
    t.float "temperature"
    t.string "wind_direction"
    t.float "wind_kph"
    t.integer "humidity"
    t.float "feels_like_temperature"
    t.float "uv_index"
    t.float "gust_kph"
    t.bigint "weather_condition_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_weather_reports_on_location_id"
    t.index ["weather_condition_id"], name: "index_weather_reports_on_weather_condition_id"
  end

  add_foreign_key "weather_reports", "locations"
  add_foreign_key "weather_reports", "weather_conditions"
end
