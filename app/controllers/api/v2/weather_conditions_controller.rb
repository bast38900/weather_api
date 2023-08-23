# WeatherCondition controller for CRUD operations
class WeatherConditionsController < ApplicationController
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

  # POST /weather_conditions
  def create
    @weather_condition = WeatherCondition.new(weather_condition_params)

    if @weather_condition.save
      render json: @weather_condition, status: :created, location: @weather_condition
    else
      render json: @weather_condition.errors, status: :unprocessable_entity
    end
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
