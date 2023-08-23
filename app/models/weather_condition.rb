# WheatherCondition class to persist data from external api, associated with (has many) wheather_reports
class WeatherCondition < ApplicationRecord
  # Associations
  has_many :wheather_reports
  # Validation
  validates :code, uniqueness: true
end
