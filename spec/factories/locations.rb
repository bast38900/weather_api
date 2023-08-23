FactoryBot.define do
  factory :location do
    name { "London" }
    region { "City of London, Greater London" }
    country { "United Kingdom" }
    timezone { "Europe/London" }
  end
end
