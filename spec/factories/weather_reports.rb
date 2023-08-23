FactoryBot.define do
  # ! NOT WORKING => Association problems
  factory :weather_report do
    location { nil }
    last_updated_at { "2023-08-23 12:32:03" }
    temperature { 21.0 }
    wind_direction { "NW" }
    wind_kph { 6.8 }
    humidity { 60 }
    feels_like_temperature { 21.0 }
    uv_index { 6.0 }
    gust_kph { 8.3 }
    weather_condition { nil }
  end
end
