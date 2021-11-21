# frozen_string_literal: true

require 'rails_helper'

RSpec.describe WeatherService, type: :service do
  describe 'call' do
    it 'returns a Hash of data', :vcr do
      expect(described_class.call('London,uk', :current)).to be_kind_of(Hash)
    end

    it 'returns the set of data we want', :vcr do
      hash_keys = described_class.call('London,uk', :current).keys
      our_keys = ['name']
      expect(our_keys - hash_keys).equal?([])
    end

    it 'returns the entered location', :vcr do
      expect(described_class.call('London,uk', :current)['name']).equal?('Marseille')
    end
  end
end
