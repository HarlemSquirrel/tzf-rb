# frozen_string_literal: true

require_relative "tzf/version"

# Load the appropriate version of the extension
ruby_minor_version = RUBY_VERSION.split(".")[0..1].join(".")
if Dir.exist?(File.join(File.dirname(__FILE__), "tzf", ruby_minor_version))
  require_relative File.join("tzf", ruby_minor_version, "tzf")
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
