# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

task :rust_build do
  `cargo rustc --release`
  `cp ./target/release/libtzf.so ./lib/tzf/`
end

task :rust_clean do
  `cargo clean`
  `rm -f ./lib/tzf/libtzf.so`
end

task default: %i[rust_build spec rubocop]
