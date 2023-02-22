# frozen_string_literal: true

require_relative "tzf/version"
require_relative "tzf/tzf"

##
# Top level module.
#
# Methods defined in ext/tzf/src/lib.rs
#
# Ex TZF.tz_name(latitude, longitude) => String
#
module TZF
  class Error < StandardError; end
end
