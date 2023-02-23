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

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/HarlemSquirrel/tzf-rb"
  spec.metadata["changelog_uri"] = "https://github.com/HarlemSquirrel/tzf-rb/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/tzf/extconf.rb"]

  spec.metadata["rubygems_mfa_required"] = "true"

  spec.add_dependency("rb_sys", "~> 0.9")

  spec.add_development_dependency("rake", "~> 13.0")
  spec.add_development_dependency("rake-compiler", "~> 1.2")
end
