# BinaryHeap

BinaryHeap is a pure ruby implementation of a binary heap, that can be used as a priority queue.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG 

## Usage

````ruby

    require 'binary_heap'
    q = BinaryHeap::Base.new([4,5,7])
    q.push(2)  
    q.min # => 2
    q.pop # => 2
    q.min # => 4

````

## Benchmarks

On modern Ruby (>= 3.2) with YJIT enabled it is about as fast as priority_queue_cxx 
which is a Heap Implementation written as a C++-Extension to Ruby. In any case it compares 
favorably against other heap implementations written in pure Ruby.

Library             | user       |system     | total    |    real
--------------------|------------|-----------|----------|------------
binary_heap         |  3.089522  | 0.005000  | 3.094522 |(  3.094816)
priority_queue_cxx  |  0.726967  | 0.000000  | 0.726967 |(  0.726975)
lazy-priority-queue | 10.646469  | 0.032996  |10.679465 |( 10.681288)

With YJIT enabled:


Library             |   user   |  system  |    total|   real
--------------------|----------|----------|---------|----------
binary_heap         | 0.697922 | 0.003981| 0.701903|(  0.702160)
priority_queue_cxx  | 0.707953 |  0.001005|  0.708958|(  0.708970)
lazy-priority-queue | 5.456912 | 0.027023|  5.483935|(  5.484204)



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).



## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/skr0504/binary_heap.
