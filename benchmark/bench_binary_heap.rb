require_relative 'bench_helper'


puts "Comparison with priority_queue_cxx"

Benchmark.bmbm do |b|

  b.report("binary_heap") do
    pq = BinaryHeap::Base.new
    RUNS.times { pq.push(rand(RUNS)) }
    RUNS.times { pq.pop }
  end

  b.report("priority_queue_cxx") do
    pq = FastContainers::PriorityQueue.new(:min)
    RUNS.times { |i| pq.push(i, rand(RUNS)) }
    RUNS.times { pq.pop }
  end

  b.report("lazy-priority-queue") do
    pq = MinPriorityQueue.new
    RUNS.times { |i| pq.push(i, rand(RUNS)) }
    RUNS.times { pq.pop }
  end
end
