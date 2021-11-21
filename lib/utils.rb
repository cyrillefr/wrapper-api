# frozen_string_literal: true

# Useful methods
module Utils
  def self.time_hhmmss(str)
    Time.zone.at(str).strftime('%H:%H:%S')
  end

  def self.kelvin_to_cent(kelvin)
    (kelvin - 273.16).round(2)
  end
end
