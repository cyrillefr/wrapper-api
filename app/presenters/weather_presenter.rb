# frozen_string_literal: true

# Presentation methods for Weather
class WeatherPresenter
  include WeatherHelper
  def initialize(weather)
    @weather = weather
  end

  def content?
    # HTTP codes
    @weather&.fetch('cod', 400) == 200
  end

  def description
    @weather.dig('weather', 0, 'description').capitalize
  end

  def sunrise
    WeatherHelper.time_hhmmss @weather.dig('sys', 'sunrise')
  end

  def sunset
    WeatherHelper.time_hhmmss @weather.dig('sys', 'sunset')
  end

  def name
    @weather['name']
  end

  def temperature
    WeatherHelper.kelvin_to_cent(@weather.dig('main', 'temp'))
  end
end
