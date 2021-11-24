# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

gem 'faraday_middleware'
gem 'figaro'
gem 'hotwire-rails'
gem 'importmap-rails'
gem 'slim-rails'

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rails', '~> 2.12', '>= 2.12.4'
  gem 'rubocop-rspec', require: false
  gem 'vcr'
end

group :development do
  gem 'listen', '~> 3.3'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Use Redis for Action Cable
gem 'redis', '~> 4.0'
