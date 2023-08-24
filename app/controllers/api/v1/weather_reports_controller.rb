# WeatherReport controller for CRUD operations, V1
class Api::V1::WeatherReportsController < ApplicationController
  # ! Fix
  before_action :set_weather_report, only: %i[show update destroy]

  # # GET /weather_reports
  # def index
  #   @weather_reports = WeatherReport.all

  #   render json: @weather_reports
  # end

  # ? GET /weather_reports from API endpoint
  def index
    @weather_reports = fetch_data

    render json: @weather_reports
  end

  # GET /weather_reports/1
  def show
    render json: @weather_report
  end

  # PATCH/PUT /weather_reports/1
  def update
    if @weather_report.update(weather_report_params)
      render json: @weather_report
    else
      render json: @weather_report.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weather_reports/1
  def destroy
    @weather_report.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_weather_report
    @weather_report = WeatherReport.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def weather_report_params
    params.require(:weather_report).permit(:location_id, :last_updated_at, :temperature, :wind_direction, :wind_kph, :humidity, :feels_like_temperature, :uv_index, :gust_kph, :weather_condition_id)
  end
end
