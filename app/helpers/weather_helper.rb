# frozen_string_literal: true

# utilities for weather service
module WeatherHelper
  extend Utils
  def content?(weather)
    # HTTP codes
    weather&.fetch('cod', 400) == 200
  end

  def description(weather)
    weather.dig('weather', 0, 'description').capitalize
  end

  def sunrise(weather)
    Utils.time_hhmmss weather.dig('sys', 'sunrise')
  end

  def sunset(weather)
    Utils.time_hhmmss weather.dig('sys', 'sunset')
  end

  def name(weather)
    weather['name']
  end

  def temperature(weather)
    Utils.kelvin_to_cent(weather.dig('main', 'temp'))
  end
end
