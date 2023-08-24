require 'httparty'
require 'dotenv'

# Module for fetching weather data from the external API
module WeatherApi
  def fetch_data
    api_key = ENV['API_KEY']
    HTTParty.get("http://api.weatherapi.com/v1/current.json?key=#{api_key}&q=London&aqi=no")
  end
end