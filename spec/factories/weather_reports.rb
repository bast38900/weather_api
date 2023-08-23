FactoryBot.define do
  factory :weather_report do
    location { nil }
    last_updated_at { "2023-08-23 15:10:49" }
    temperature { 1.5 }
    wind_direction { "MyString" }
    wind_kph { 1.5 }
    humidity { 1 }
    feels_like_temperature { 1.5 }
    uv_index { 1.5 }
    gust_kph { 1.5 }
    weather_condition { nil }
  end
end
