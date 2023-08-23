require "rails_helper"

RSpec.describe WeatherConditionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/weather_conditions").to route_to("weather_conditions#index")
    end

    it "routes to #show" do
      expect(get: "/weather_conditions/1").to route_to("weather_conditions#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/weather_conditions").to route_to("weather_conditions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/weather_conditions/1").to route_to("weather_conditions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/weather_conditions/1").to route_to("weather_conditions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/weather_conditions/1").to route_to("weather_conditions#destroy", id: "1")
    end
  end
end
