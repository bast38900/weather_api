require "rails_helper"

RSpec.describe WeatherReportsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/weather_reports").to route_to("weather_reports#index")
    end

    it "routes to #show" do
      expect(get: "/weather_reports/1").to route_to("weather_reports#show", id: "1")
    end

    it "routes to #create" do
      expect(post: "/weather_reports").to route_to("weather_reports#create")
    end
  end
end
