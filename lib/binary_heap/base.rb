module BinaryHeap
  class Base

    include Enumerable

    def initialize(ary=[])
      if ary.is_a? Array
        @heap = ary.dup
        heapify
      else
        raise ArgumentError
      end
    end

    def length
      @heap.length
    end

    def each
      @heap.each
    end

    def <<(el)
      @heap << el
      rebalance_up(@heap.size - 1)
      self
    end

    def push(*els)
      if els.length < length
        els.each do |el|
          self << el
        end
      else
        @heap.push(*els)
        heapify
      end
      self
    end

    def pop
      @heap[0], @heap[-1] = @heap[-1], @heap[0]
      res = @heap.pop
      if @heap.size.positive?
        rebalance_down(0)
      end
      res
    end

    def min
      @heap[0]
    end

    def replace_min(el)
      @heap[0] = el
      rebalance_down(0)
    end

    def clear
      @heap.clear
      self
    end


    private 

    def heapify
      ((@heap.size >> 1)-1).downto(0).each do |n| # all internal nodes
        rebalance_down(n)
      end
    end

    def rebalance_up(i)
      while i.positive?
        parent_i = i >> 1
        if @heap[i] < @heap[parent_i]
          @heap[i], @heap[parent_i] = @heap[parent_i], @heap[i]
          i = parent_i
        else
          break
        end
      end
    end

    def rebalance_down(i)
      while (i << 1).succ < @heap.size
        left_i = (i << 1).succ
        right_i = (i.succ) << 1

        if @heap[right_i] && @heap[right_i] <= @heap[left_i] && @heap[right_i] < @heap[i]
          @heap[i], @heap[right_i] = @heap[right_i], @heap[i]
          i = right_i
        elsif @heap[left_i] < @heap[i]
          @heap[i], @heap[left_i] = @heap[left_i], @heap[i]
          i = left_i
        else
          break
        end
      end
    end
  end
end
