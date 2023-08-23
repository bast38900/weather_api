require "rails_helper"

RSpec.describe Api::V1::WeatherReportsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/weather_reports").to route_to("api/v1/weather_reports#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/weather_reports/1").to route_to("api/v1/weather_reports#show", id: "1")
    end
  end
end

RSpec.describe Api::V2::WeatherReportsController, type: :routing do
  describe "routing" do
    it "routes to #create" do
      expect(post: "api/v2/weather_reports").to route_to("api/v2/weather_reports#create")
    end
  end
end
