require 'rails_helper'

RSpec.describe WeatherReport, type: :model do
  it "is valid with valid attributes" do
    expect(FactoryBot.create(:weather_report)).to be_valid
  end
end
