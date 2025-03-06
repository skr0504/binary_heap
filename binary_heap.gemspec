# frozen_string_literal: true

require_relative "lib/binary_heap/version"

Gem::Specification.new do |spec|
  spec.name = "binary_heap"
  spec.version = BinaryHeap::VERSION
  spec.authors = ["Sebastian Krause"]
  spec.email = ["sebastian.krause@gmx.de"]

  spec.summary = "A simple implementation of a binary heap in Ruby."
  spec.description = "A binary heap can be used as a priority queue."
  spec.required_ruby_version = ">= 3.0.0"
  spec.homepage    = 'https://github.com/skr0504/binary_heap'
  spec.license     = 'MIT'


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
