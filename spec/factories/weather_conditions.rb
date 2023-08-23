FactoryBot.define do
  factory :weather_condition do
    text { "Partly cloudy" }
    icon { "//cdn.weatherapi.com/weather/64x64/day/116.png" }
    code { 1003 }
  end
end
