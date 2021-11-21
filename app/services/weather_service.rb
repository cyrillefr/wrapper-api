# frozen_string_literal: true

# A service for current day weather
class WeatherService
  include WeatherServiceBuilderFactory
  attr_reader :location, :builder

  def self.call(...)
    new(...).call
  end

  def initialize(location, type)
    @location = location
    @builder = builder_for(type)
  end

  def call
    HTTPConnection.get(@builder.url_for(@location)).body
  end
end
