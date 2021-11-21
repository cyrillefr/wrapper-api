# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the WeatherHelper.

RSpec.describe WeatherHelper, type: :helper do
  let(:weather) { { 'sys' => { 'sunrise' => 163_306_806_9 } } }

  describe '#sunrise' do
    it 'returns a HH:MM:SS formatted sunrise time' do
      expect(sunrise(weather)).to eq '06:06:09'
    end
  end
end
