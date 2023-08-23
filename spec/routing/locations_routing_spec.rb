require "rails_helper"

RSpec.describe Api::V1::LocationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "api/v1/locations").to route_to("api/v1/locations#index")
    end

    it "routes to #show" do
      expect(get: "api/v1/locations/1").to route_to("api/v1/locations#show", id: "1")
    end
  end
end

RSpec.describe Api::V2::LocationsController, type: :routing do
  it "routes to #create" do
    expect(post: "api/v2/locations").to route_to("api/v2/locations#create")
  end
end
