class SpaceAge

	attr_accessor :seconds

	PLANET_ORBIT_RATIOS_TO_EARTH = {
		mercury: 0.2408467,
		venus: 0.61519726,
		earth: 1.0,
		mars: 1.8808158,
		jupiter: 11.862615,
		saturn: 29.447498,
		uranus: 84.016846,
		neptune: 164.79132
	}

	SECONDS_IN_EARTH_YEAR = 31557600

	def initialize(seconds)
		@seconds = seconds
	end

	PLANET_ORBIT_RATIOS_TO_EARTH.keys.each do |planet|
		define_method "on_#{planet}" do
      (seconds / PLANET_ORBIT_RATIOS_TO_EARTH[planet.to_sym]) / SECONDS_IN_EARTH_YEAR
    end
	end
end
