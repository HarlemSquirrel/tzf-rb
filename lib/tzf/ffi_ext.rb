# frozen_string_literal: true

require "ffi"

module TZF
  ##
  # Interface to tsf-rs Rust library.
  #
  module FFIExt
    extend FFI::Library

    ffi_lib File.expand_path("libtzf.so", __dir__)
    attach_function :get_tz_name, %i[double double], :string
  end
end
