# frozen_string_literal: true

require_relative "lib/tzf/version"

Gem::Specification.new do |spec|
  spec.name = "tzf"
  spec.version = TZF::VERSION
  spec.authors = ["Kevin McCormack"]
  spec.email = ["kevin@mccormack.tech"]

  spec.summary = "Ruby time zone lookup interface using tzf-rs"
  spec.description = "Ruby time zone lookup interface using tzf-rs."
  spec.homepage = "https://github.com/HarlemSquirrel/tzf-rb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"
  spec.required_rubygems_version = ">= 3.4.6"

  spec.metadata["bug_tracker_uri"] = "https://github.com/HarlemSquirrel/tzf-rb/issues"
  spec.metadata["changelog_uri"] = "https://github.com/HarlemSquirrel/tzf-rb/blob/main/CHANGELOG.md"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/HarlemSquirrel/tzf-rb"

  spec.files = Dir["ext/**/*"] +
               Dir["lib/**/*.rb"] +
               Dir["sig/tzf.rbs"] +
               Dir["Cargo.lock"] +
               Dir["Cargo.toml"] +
               Dir["LICENSE.txt"] +
               Dir["README.md"] +
               Dir["tzf.gemspec"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/tzf/extconf.rb"]

  spec.metadata["rubygems_mfa_required"] = "true"

  spec.add_dependency("rb_sys", "~> 0.9")
end
