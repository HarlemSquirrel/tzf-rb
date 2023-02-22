# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

require "rake/extensiontask"

desc "Build extension"
task build: :compile

Rake::ExtensionTask.new("tzf") do |ext|
  ext.lib_dir = "lib/tzf"
end

task default: %i[compile spec rubocop]
