# frozen_string_literal: true

require "test_helper"

describe "BinaryHeap" do
  it "has version" do
    refute_empty ::BinaryHeap::VERSION
  end

  describe "Base" do

    describe "initialization" do

      it "can be initialized as an empty heap" do
        assert_equal 0, BinaryHeap::Base.new.length
      end

      it "can be initialized with an array" do
        ary = [9,6,2,3]
        assert_equal 4, BinaryHeap::Base.new(ary).length
      end

    end

    describe "empty" do 
      
      before do 
        @heap = BinaryHeap::Base.new
      end

      it "has a push method" do
        @heap.push 1
        @heap.push 2
        assert_equal 2, @heap.length
      end
    end

    describe "non empty" do
      before do 
        @heap = BinaryHeap::Base.new([3,1,2])
      end

      it "has a pop method" do
        assert_equal 3, @heap.length
        assert_equal 1, @heap.pop
        assert_equal 2, @heap.pop
        assert_equal 3, @heap.pop
      end

      it "shows the minimum" do
        assert_equal 1, @heap.min
      end

      it "can be cleared" do
        @heap.clear
        assert_equal 0, @heap.length
      end

    end
  end
end
