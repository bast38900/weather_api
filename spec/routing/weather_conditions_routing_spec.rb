require "rails_helper"

RSpec.describe Api::V1::WeatherConditionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/weather_conditions").to route_to("api/v1/weather_conditions#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/weather_conditions/1").to route_to("api/v1/weather_conditions#show", id: "1")
    end
  end
end

RSpec.describe Api::V2::WeatherConditionsController, type: :routing do
  describe "routing" do
    it "routes to #create" do
      expect(post: "api/v2/weather_conditions").to route_to("api/v2/weather_conditions#create")
    end
  end
end
