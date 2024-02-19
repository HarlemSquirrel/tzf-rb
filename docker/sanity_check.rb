# frozen_string_literal: true

require "bundler/setup"
require "tzf"

puts TZF::VERSION
puts TZF.tz_name(40.74771675713742, -73.99350390136448)
