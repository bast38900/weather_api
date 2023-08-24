require '../weather_api/lib/fetch_api'

class ApplicationController < ActionController::API
  # Use token middleware
  include ActionController::HttpAuthentication::Token::ControllerMethods
  # Module for fetching weather data
  include FetchApi
end
