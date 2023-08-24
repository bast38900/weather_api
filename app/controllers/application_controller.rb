class ApplicationController < ActionController::API
  # Use token middleware
  include ActionController::HttpAuthentication::Token::ControllerMethods
  # Module for fetching weather data
  include WeatherApi
end
