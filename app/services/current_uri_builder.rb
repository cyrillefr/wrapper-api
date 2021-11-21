# frozen_string_literal: true

# For current weather (ie today)
class CurrentURIBuilder
  include WeatherAPIInit
  def url_for(location)
    query = URI.encode_www_form(q: location, appid: APP_ID)
    URI::HTTPS.build([nil, HOST, nil, PATH_CURRENT, query, nil])
  end
end
