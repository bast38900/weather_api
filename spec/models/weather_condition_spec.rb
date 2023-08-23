require 'rails_helper'

RSpec.describe WeatherCondition, type: :model do
  it "is valid with valid attributes" do
    expect(FactoryBot.create(:weather_condition)).to be_valid
  end
end
