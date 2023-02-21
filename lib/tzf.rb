# frozen_string_literal: true

require_relative "tzf/version"
require_relative "tzf/ffi_ext"

##
# Top level.
#
module TZF
  class Error < StandardError; end

  def self.tz_name(lat, lng)
    RS.get_tz_name(lat, lng)
  end
end
