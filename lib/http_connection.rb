# frozen_string_literal: true

# Small wrapper around Faraday
class HTTPConnection
  CONN = Faraday.new do |f|
    f.response :json # decode response bodies as JSON
  end
  class << self
    extend Forwardable
    def_delegator 'self::CONN', :get, :get
  end
end
