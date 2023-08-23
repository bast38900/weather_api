# Location controller for CRUD operations, V1
class Api::V1::LocationsController < ApplicationController
  # ! Fix
  before_action :set_location, only: %i[show update destroy]

  # GET /locations
  def index
    @locations = Location.all

    render json: @locations
  end

  # GET /locations/1
  def show
    render json: @location
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
end
