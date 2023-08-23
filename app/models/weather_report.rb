# WeatherReport class to persist data from external api, associated with (has an) location and weathercondition
class WeatherReport < ApplicationRecord
  # ! Validation => add review topic
  validates :last_updated_at, uniqueness: { scope: :locations_id, message: "Report already exist" }
  # ! Association => add review topic
  belongs_to :location
  belongs_to :weather_condition
end
