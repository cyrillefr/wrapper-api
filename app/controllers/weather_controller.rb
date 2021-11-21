# frozen_string_literal: true

# Web controller
class WeatherController < ApplicationController
  def index; end

  def weather
    @weather = WeatherService.call(params[:location], :current)
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(
          :weatherData,
          partial: 'weather_data'
        )
      end
    end
  end
end
