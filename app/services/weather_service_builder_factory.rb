# frozen_string_literal: true

# Current, Forecast etc.
module WeatherServiceBuilderFactory
  def builder_for(type)
    case type
    when :current
      CurrentURIBuilder.new
    else
      raise 'Unsupported type'
    end
  end
end
