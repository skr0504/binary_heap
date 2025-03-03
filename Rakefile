# frozen_string_literal: true

require "bundler/gem_tasks"
require "minitest/test_task"


Minitest::TestTask.create

task default: :test

desc "Run benchmarks"
task :benchmark do
  Dir.glob('./benchmark/bench_*.rb') { |file| require file }
end
