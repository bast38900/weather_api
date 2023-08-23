# Location class to persist data from external api, associated with (has many) wheather_reports
class Location < ApplicationRecord
  # Associations
  has_many :wheather_reports
end
