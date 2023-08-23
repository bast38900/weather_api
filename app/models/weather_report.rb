# WeatherReport class to persist data from external api, associated with (has an) location and weathercondition
class WeatherReport < ApplicationRecord
  belongs_to :location
  belongs_to :weather_condition
end
