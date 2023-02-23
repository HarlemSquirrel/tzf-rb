# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

require "rake/extensiontask"

desc "Build extension"
task build: :compile

require "rb_sys/extensiontask"

GEMSPEC = Gem::Specification.load("tzf.gemspec")

RbSys::ExtensionTask.new("tzf", GEMSPEC) do |ext|
  ext.lib_dir = "lib/tzf"
end

task default: %i[compile spec rubocop]
