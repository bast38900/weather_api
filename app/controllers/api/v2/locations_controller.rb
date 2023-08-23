# Location controller for CRUD operations
class Api::V2::LocationsController < ApplicationController
  # ! Fix
  before_action :set_location, only: %i[show update destroy]
  # Authentication before action method can run
  before_action :authenticate
  TOKEN = "secret".freeze

  # POST /locations
  def create
    @location = Location.new(location_params)

    if @location.save
      render json: @location, status: :created, location: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_location
    @location = Location.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def location_params
    params.require(:location).permit(:name, :region, :country, :timezone)
  end

  # authenticate with token
  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
    end
  end
end
