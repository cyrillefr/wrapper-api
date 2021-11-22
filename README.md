# Search for weather forecast for today
A wrapper for the openweather API. Built upon Faraday http client. A demo of OOP.

OOP with use of Strategy patterns, Factory pattern and delegation(from class to instance).

Open/Closed Principle: each new forecast type (5 days, 10 days etc ...) can be easily add with the factory [service_builder_factory](https://github.com/cyrillefr/wrapper-api/blob/master/app/services/weather_service_builder_factory.rb).
Which uses factories defined in a file [current_uri_builder](https://github.com/cyrillefr/wrapper-api/blob/master/app/services/current_uri_builder.rb). Current is the current type forecast(24h).

Service call -> get on wrapper [weather_service](https://github.com/cyrillefr/wrapper-api/blob/master/app/services/weather_service.rb) -> get on Faraday connection [connection object](https://github.com/cyrillefr/wrapper-api/blob/master/lib/http_connection.rb)

Also:
- Use of Turbo/Hotwire
    - [index.html.slim](https://github.com/cyrillefr/wrapper-api/blob/master/app/views/weather/index.html.slim) link via weatherData id div
    - [weather_controller](https://github.com/cyrillefr/wrapper-api/blob/master/app/controllers/weather_controller.rb) only this partial is reloaded on search.
- Bulma CSS for the front-end + slim
    - [index.html.slim](https://github.com/cyrillefr/wrapper-api/blob/master/app/views/weather/index.html.slim)
    - [_weather_data.html.slim](https://github.com/cyrillefr/wrapper-api/blob/master/app/views/weather/_weather_data.html.slim)
- Configuration/secret: figaro & .gitignore
- Skinny controller: use of a service
    - [weather_controller](https://github.com/cyrillefr/wrapper-api/blob/master/app/controllers/weather_controller.rb) 
- locales 
    - [en.yml](https://github.com/cyrillefr/wrapper-api/blob/master/config/locales/en.yml)
- helpers
    - [weather_helper](https://github.com/cyrillefr/wrapper-api/blob/master/app/helpers/weather_helper.rb) 


Demo live at [Heroku](https://cv-wrapper-api.herokuapp.com/)
