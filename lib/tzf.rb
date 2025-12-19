# frozen_string_literal: true

require_relative "tzf/version"

# Load the appropriate version of the extension
RUBY_MINOR_VERSION = RUBY_VERSION.split(".")[0..1].join(".")
if Dir.exist?(File.join(File.dirname(__FILE__), "tzf", RUBY_MINOR_VERSION))
  require_relative File.join("tzf", RUBY_MINOR_VERSION, "tzf")
else
  require_relative File.join("tzf", "tzf")
end

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
