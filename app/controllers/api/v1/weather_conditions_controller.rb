# WeatherCondition controller for CRUD operations, V1
class Api::V1::WeatherConditionsController < ApplicationController
  # ! Fix
  before_action :set_weather_condition, only: %i[show update destroy]

  # GET /weather_conditions
  def index
    @weather_conditions = WeatherCondition.all

    render json: @weather_conditions
  end

  # GET /weather_conditions/1
  def show
    render json: @weather_condition
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_weather_condition
    @weather_condition = WeatherCondition.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def weather_condition_params
    params.require(:weather_condition).permit(:text, :icon, :code)
  end
end
